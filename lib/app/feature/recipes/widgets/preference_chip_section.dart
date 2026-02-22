import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';
import 'package:fork_cast/app/feature/recipes/widgets/add_custom_item_dialog.dart';

/// {@template preference_chip_section}
/// A reusable section displaying a header with clear/add
/// actions and a wrap of selectable filter chips.
/// {@endtemplate}
class PreferenceChipSection extends StatelessWidget {
  /// {@macro preference_chip_section}
  const PreferenceChipSection({
    required this.title,
    required this.defaultItems,
    required this.selector,
    required this.onToggle,
    required this.onClear,
    required this.onAddCustom,
    required this.onRemoveCustom,
    required this.onRemoveDefault,
    required this.dialogTitle,
    required this.dialogLabelText,
    required this.dialogHintText,
    super.key,
  });

  /// Section heading text.
  final String title;

  /// The preset items to always show.
  final List<String> defaultItems;

  /// Selects the relevant selected/custom/hidden lists from state.
  final ({List<String> selected, List<String> custom, List<String> hidden})
      Function(RecipeState state) selector;

  /// Called when a chip is toggled.
  final ValueChanged<String> onToggle;

  /// Called when the clear button is pressed.
  final VoidCallback onClear;

  /// Called for each custom item the user adds.
  final ValueChanged<String> onAddCustom;

  /// Called when a custom chip is deleted.
  final ValueChanged<String> onRemoveCustom;

  /// Called when a default chip is deleted.
  final ValueChanged<String> onRemoveDefault;

  /// Title for the add-custom dialog.
  final String dialogTitle;

  /// Label text for the dialog text field.
  final String dialogLabelText;

  /// Hint text for the dialog text field.
  final String dialogHintText;

  @override
  Widget build(BuildContext context) {
    final recipeBloc = getIt<RecipeBloc>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: onClear,
                  icon: const Icon(Icons.deselect),
                  tooltip: 'Clear all $title',
                ),
                IconButton.filled(
                  onPressed: () async {
                    final items = await AddCustomItemDialog.show(
                      context: context,
                      title: dialogTitle,
                      labelText: dialogLabelText,
                      hintText: dialogHintText,
                    );
                    if (items == null) return;
                    items.forEach(onAddCustom);
                  },
                  icon: const Icon(Icons.add),
                  tooltip: 'Add custom $title',
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        BlocSelector<
          RecipeBloc,
          RecipeState,
          ({List<String> selected, List<String> custom, List<String> hidden})
        >(
          bloc: recipeBloc,
          selector: selector,
          builder: (context, data) {
            final noneSelected = data.selected.isEmpty;
            final visibleDefaults = defaultItems
                .where((item) => !data.hidden.contains(item))
                .toList();
            final allItems = [
              ...visibleDefaults,
              ...data.custom,
            ];
            return Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                FilterChip(
                  label: const Text('All'),
                  selected: noneSelected,
                  onSelected: (_) => onClear(),
                ),
                ...allItems.map((item) {
                  final isSelected = data.selected.contains(item);
                  final isCustom = data.custom.contains(item);
                  return FilterChip(
                    label: Text(item),
                    selected: isSelected,
                    onSelected: (_) => onToggle(item),
                    deleteIcon: const Icon(Icons.close, size: 18),
                    onDeleted: isCustom
                        ? () => onRemoveCustom(item)
                        : () => onRemoveDefault(item),
                  );
                }),
              ],
            );
          },
        ),
      ],
    );
  }
}
