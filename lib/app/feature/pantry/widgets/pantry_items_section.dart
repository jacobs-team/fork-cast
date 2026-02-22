import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/core.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/pantry/bloc/pantry_bloc.dart';
import 'package:fork_cast/app/feature/pantry/widgets/pantry_category_group.dart';

/// Displays the current pantry items grouped by category.
class PantryItemsSection extends StatelessWidget {
  /// Creates pantry items section.
  const PantryItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<PantryBloc>();
    return BlocSelector<PantryBloc, PantryState,
        ({List<PantryItem> items, bool isCategorizing})>(
      bloc: bloc,
      selector: (state) => (
        items: state.pantryItems,
        isCategorizing: state.isCategorizing,
      ),
      builder: (context, selected) {
        final pantryItems = selected.items;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Your Pantry (${pantryItems.length} items)',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (selected.isCategorizing) ...[
                  const SizedBox(width: 8),
                  const SizedBox(
                    width: 14,
                    height: 14,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Categorizing...',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                  ),
                ],
                const Spacer(),
                if (pantryItems.isNotEmpty)
                  IconButton(
                    onPressed: selected.isCategorizing
                        ? null
                        : () => bloc.add(
                              const PantryEvent.recategorizeAll(),
                            ),
                    icon: const Icon(Icons.auto_fix_high),
                    tooltip: 'Recategorize all items',
                  ),
              ],
            ),
            const SizedBox(height: 8),
            if (pantryItems.isEmpty)
              Text(
                'No items yet. Use the buttons above to add items.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
              )
            else
              ..._buildCategoryGroups(pantryItems, bloc),
          ],
        );
      },
    );
  }

  List<Widget> _buildCategoryGroups(
    List<PantryItem> items,
    PantryBloc bloc,
  ) {
    final grouped = <PantryCategory, List<PantryItem>>{};
    for (final item in items) {
      grouped.putIfAbsent(item.category, () => []).add(item);
    }
    final sortedCategories = grouped.keys.toList()
      ..sort((a, b) => a.index.compareTo(b.index));

    return [
      for (final category in sortedCategories) ...[
        PantryCategoryGroup(
          category: category,
          items: grouped[category]!,
          onRemove: (name) => bloc.add(PantryEvent.removeItem(name)),
        ),
        const SizedBox(height: 12),
      ],
    ];
  }
}
