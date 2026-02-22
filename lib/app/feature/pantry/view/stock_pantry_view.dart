import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/pantry/pantry.dart';
import 'package:fork_cast/app/navigation/app_router.dart';
import 'package:image_picker/image_picker.dart';

/// {@template stock_pantry_view}
/// Full-screen pantry management view with AI-powered item extraction
/// via camera, gallery, or voice input.
/// {@endtemplate}
class StockPantryView extends StatefulWidget {
  /// {@macro stock_pantry_view}
  const StockPantryView({super.key});

  @override
  State<StockPantryView> createState() => _StockPantryViewState();
}

class _StockPantryViewState extends State<StockPantryView> {
  final PantryBloc _pantryBloc = getIt<PantryBloc>();
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickFromCamera() async {
    final photo = await _picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1024,
    );
    if (photo == null) return;
    final bytes = await photo.readAsBytes();
    _pantryBloc.add(
      PantryEvent.extractFromImage(
        base64Image: base64Encode(bytes),
        mimeType: photo.mimeType ?? 'image/jpeg',
      ),
    );
  }

  Future<void> _pickFromGallery() async {
    final photo = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1024,
    );
    if (photo == null) return;
    final bytes = await photo.readAsBytes();
    _pantryBloc.add(
      PantryEvent.extractFromImage(
        base64Image: base64Encode(bytes),
        mimeType: photo.mimeType ?? 'image/jpeg',
      ),
    );
  }

  void _startVoiceInput() {
    unawaited(showModalBottomSheet<void>(
      context: context,
      builder: (_) => VoiceInputSheet(
        onResult: (text) {
          _pantryBloc.add(PantryEvent.extractFromText(text: text));
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stock Your Pantry')),
      body: BlocListener<PantryBloc, PantryState>(
        bloc: _pantryBloc,
        listenWhen: (prev, curr) =>
            prev.extractionLoadingState != PantryLoadingState.failure &&
            curr.extractionLoadingState == PantryLoadingState.failure,
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? 'Error')),
          );
        },
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocSelector<PantryBloc, PantryState, bool>(
                        bloc: _pantryBloc,
                        selector: (state) => state.pantryItems.isEmpty,
                        builder: (context, isEmpty) {
                          return Text(
                            isEmpty
                                ? "Let's stock your pantry"
                                : 'Add more items',
                            style: Theme.of(context).textTheme.headlineSmall,
                          );
                        },
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Scan a receipt, snap a photo of your fridge, '
                        'or tell us what you have.',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                      ),
                      const SizedBox(height: 24),
                      BlocSelector<PantryBloc, PantryState, bool>(
                        bloc: _pantryBloc,
                        selector: (state) =>
                            state.extractionLoadingState ==
                            PantryLoadingState.loading,
                        builder: (context, isLoading) {
                          return PantryInputButtons(
                            onCamera: _pickFromCamera,
                            onGallery: _pickFromGallery,
                            onVoice: _startVoiceInput,
                            isLoading: isLoading,
                          );
                        },
                      ),
                      const SizedBox(height: 24),
                      BlocSelector<PantryBloc, PantryState, bool>(
                        bloc: _pantryBloc,
                        selector: (state) =>
                            state.extractionLoadingState ==
                            PantryLoadingState.loading,
                        builder: (context, isLoading) {
                          if (!isLoading) return const SizedBox.shrink();
                          return const Padding(
                            padding: EdgeInsets.only(bottom: 24),
                            child: Center(
                              child: Column(
                                children: [
                                  CircularProgressIndicator(),
                                  SizedBox(height: 12),
                                  Text('Analyzing...'),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      const DetectedItemsSection(),
                      const SizedBox(height: 16),
                      PantryManualInput(
                        onAdd: (items) => _pantryBloc.add(
                          PantryEvent.addManualItems(items),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const PantryItemsSection(),
                    ],
                  ),
                ),
              ),
              _ContinueButton(bloc: _pantryBloc),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContinueButton extends StatelessWidget {
  const _ContinueButton({required this.bloc});

  final PantryBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PantryBloc, PantryState, bool>(
      bloc: bloc,
      selector: (state) => state.pantryItems.isNotEmpty,
      builder: (context, hasItems) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: hasItems
                  ? () => const SelectPreferencesRoute().go(context)
                  : null,
              child: const Text('Continue'),
            ),
          ),
        );
      },
    );
  }
}
