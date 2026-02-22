import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/core.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/pantry/bloc/pantry_bloc.dart';

/// Shows AI-detected items for review before adding to pantry.
class DetectedItemsSection extends StatelessWidget {
  /// Creates detected items section.
  const DetectedItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<PantryBloc>();
    return BlocSelector<PantryBloc, PantryState, List<PantryItem>>(
      bloc: bloc,
      selector: (state) => state.detectedItems,
      builder: (context, detectedItems) {
        if (detectedItems.isEmpty) return const SizedBox.shrink();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Found ${detectedItems.length} items',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                FilledButton(
                  onPressed: () =>
                      bloc.add(PantryEvent.addItems(detectedItems)),
                  child: const Text('Add All to Pantry'),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: detectedItems
                  .map(
                    (item) => Chip(
                      label: Text(item.name),
                      onDeleted: () => bloc.add(
                        PantryEvent.removeDetectedItem(item.name),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      },
    );
  }
}
