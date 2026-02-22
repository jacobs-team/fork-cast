import 'package:flutter/material.dart';
import 'package:fork_cast/app/core/core.dart';

/// Displays a category label with a Wrap of deletable item chips.
class PantryCategoryGroup extends StatelessWidget {
  /// Creates a pantry category group.
  const PantryCategoryGroup({
    required this.category,
    required this.items,
    required this.onRemove,
    super.key,
  });

  /// The category for this group.
  final PantryCategory category;

  /// Items belonging to this category.
  final List<PantryItem> items;

  /// Called with the item name when a chip is deleted.
  final ValueChanged<String> onRemove;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category.displayName,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: items
              .map(
                (item) => Chip(
                  label: Text(item.name),
                  onDeleted: () => onRemove(item.name),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
