import 'dart:developer';

import 'package:fork_cast/app/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'pantry_bloc.freezed.dart';
part 'pantry_bloc.g.dart';

/// {@template pantry_bloc}
/// Manages pantry item state with AI-powered extraction and persistence.
/// {@endtemplate}
@singleton
class PantryBloc extends HydratedBloc<PantryEvent, PantryState> {
  /// {@macro pantry_bloc}
  PantryBloc(this._pantryRepository) : super(const PantryState()) {
    on<PantryEvent>(
      (event, emit) => event.map(
        extractFromImage: (value) => _extractFromImage(value, emit),
        extractFromText: (value) => _extractFromText(value, emit),
        addItems: (value) => _addItems(value, emit),
        addManualItems: (value) => _addManualItems(value, emit),
        removeItem: (value) => _removeItem(value, emit),
        removeDetectedItem: (value) => _removeDetectedItem(value, emit),
        clearDetectedItems: (_) => emit(state.copyWith(detectedItems: [])),
        recategorizeAll: (_) => _recategorizeAll(emit),
      ),
    );
  }

  final PantryRepository _pantryRepository;

  Future<void> _extractFromImage(
    ExtractFromImage event,
    Emitter<PantryState> emit,
  ) async {
    try {
      emit(
        state.copyWith(extractionLoadingState: PantryLoadingState.loading),
      );
      final items = await _pantryRepository.extractItemsFromImage(
        base64Image: event.base64Image,
        mimeType: event.mimeType,
      );
      emit(
        state.copyWith(
          detectedItems: items,
          extractionLoadingState: PantryLoadingState.success,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          extractionLoadingState: PantryLoadingState.failure,
          errorMessage: 'Failed to extract items from image',
        ),
      );
      log(e.toString());
    }
  }

  Future<void> _extractFromText(
    ExtractFromText event,
    Emitter<PantryState> emit,
  ) async {
    try {
      emit(
        state.copyWith(extractionLoadingState: PantryLoadingState.loading),
      );
      final items = await _pantryRepository.extractItemsFromText(
        text: event.text,
      );
      emit(
        state.copyWith(
          detectedItems: items,
          extractionLoadingState: PantryLoadingState.success,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          extractionLoadingState: PantryLoadingState.failure,
          errorMessage: 'Failed to extract items from text',
        ),
      );
      log(e.toString());
    }
  }

  void _addItems(AddItems event, Emitter<PantryState> emit) {
    final currentNames = state.pantryItems.map((i) => i.name).toSet();
    final newItems = event.items.where(
      (i) => i.name.trim().isNotEmpty && !currentNames.contains(i.name),
    );
    emit(
      state.copyWith(
        pantryItems: [...state.pantryItems, ...newItems],
        detectedItems: [],
      ),
    );
  }

  Future<void> _addManualItems(
    AddManualItems event,
    Emitter<PantryState> emit,
  ) async {
    final currentNames = state.pantryItems.map((i) => i.name).toSet();
    final uncategorized = event.items
        .where((i) => i.trim().isNotEmpty && !currentNames.contains(i))
        .map((name) => PantryItem(name: name))
        .toList();
    if (uncategorized.isEmpty) return;

    emit(
      state.copyWith(
        pantryItems: [...state.pantryItems, ...uncategorized],
        isCategorizing: true,
      ),
    );

    try {
      final categorized = await _pantryRepository.categorizeItems(
        items: uncategorized.map((i) => i.name).toList(),
      );
      final categoryMap = {
        for (final i in categorized) i.name.toLowerCase(): i,
      };
      final updated = state.pantryItems.map((item) {
        final match = categoryMap[item.name.toLowerCase()];
        if (match != null && item.category == PantryCategory.other) {
          return item.copyWith(name: match.name, category: match.category);
        }
        return item;
      }).toList();
      emit(state.copyWith(pantryItems: updated, isCategorizing: false));
    } catch (e) {
      emit(state.copyWith(isCategorizing: false));
      log(e.toString());
    }
  }

  Future<void> _recategorizeAll(Emitter<PantryState> emit) async {
    if (state.pantryItems.isEmpty) return;
    emit(state.copyWith(isCategorizing: true));
    try {
      final categorized = await _pantryRepository.categorizeItems(
        items: state.pantryItems.map((i) => i.name).toList(),
      );
      final categoryMap = {
        for (final i in categorized) i.name.toLowerCase(): i,
      };
      final updated = state.pantryItems.map((item) {
        final match = categoryMap[item.name.toLowerCase()];
        if (match != null) {
          return item.copyWith(name: match.name, category: match.category);
        }
        return item;
      }).toList();
      emit(state.copyWith(pantryItems: updated, isCategorizing: false));
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(isCategorizing: false));
      log(e.toString());
    }
  }

  void _removeItem(RemoveItem event, Emitter<PantryState> emit) {
    final updated = state.pantryItems
        .where((i) => i.name != event.item)
        .toList();
    emit(state.copyWith(pantryItems: updated));
  }

  void _removeDetectedItem(
    RemoveDetectedItem event,
    Emitter<PantryState> emit,
  ) {
    final updated = state.detectedItems
        .where((i) => i.name != event.item)
        .toList();
    emit(state.copyWith(detectedItems: updated));
  }

  @override
  PantryState fromJson(Map<String, dynamic> json) =>
      _pantryStateFromJsonWithMigration(json);

  @override
  Map<String, dynamic> toJson(PantryState state) =>
      const PantryState().copyWith(pantryItems: state.pantryItems).toJson();
}

PantryState _pantryStateFromJsonWithMigration(Map<String, dynamic> json) {
  final rawItems = json['pantryItems'] as List<dynamic>? ?? [];
  final pantryItems = rawItems.map((e) {
    if (e is String) {
      return PantryItem(name: e);
    }
    return PantryItem.fromJson(e as Map<String, dynamic>);
  }).toList();
  return PantryState(pantryItems: pantryItems);
}

@Freezed()
abstract class PantryEvent with _$PantryEvent {
  const factory PantryEvent.extractFromImage({
    required String base64Image,
    required String mimeType,
  }) = ExtractFromImage;
  const factory PantryEvent.extractFromText({required String text}) =
      ExtractFromText;
  const factory PantryEvent.addItems(List<PantryItem> items) = AddItems;
  const factory PantryEvent.addManualItems(List<String> items) = AddManualItems;
  const factory PantryEvent.removeItem(String item) = RemoveItem;
  const factory PantryEvent.removeDetectedItem(String item) =
      RemoveDetectedItem;
  const factory PantryEvent.clearDetectedItems() = ClearDetectedItems;
  const factory PantryEvent.recategorizeAll() = RecategorizeAll;
}

@freezed
abstract class PantryState with _$PantryState {
  const factory PantryState({
    @Default([]) List<PantryItem> pantryItems,
    @Default([]) List<PantryItem> detectedItems,
    @Default(PantryLoadingState.init) PantryLoadingState extractionLoadingState,
    @Default(false) bool isCategorizing,
    String? errorMessage,
  }) = _PantryState;

  factory PantryState.fromJson(Map<String, dynamic> json) =>
      _$PantryStateFromJson(json);
}

enum PantryLoadingState { init, loading, success, failure }
