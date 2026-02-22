import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/core.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/pantry/pantry.dart';
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';
import 'package:fork_cast/app/feature/recipes/widgets/add_custom_item_dialog.dart';
import 'package:fork_cast/app/feature/recipes/widgets/preference_chip_section.dart';
import 'package:fork_cast/app/navigation/app_router.dart';
import 'package:fork_cast/app/navigation/routes.dart';
import 'package:go_router/go_router.dart';

/// {@template select_preferences_view}
/// Allows users to select cuisine types and ingredients for recipe generation.
/// {@endtemplate}
class SelectPreferencesView extends StatelessWidget {
  /// {@macro select_preferences_view}
  const SelectPreferencesView({super.key});

  static const _foodCategories = [
    'Italian',
    'Mexican',
    'Chinese',
    'Japanese',
    'Indian',
    'Thai',
    'American',
    'Mediterranean',
    'French',
    'Korean',
    'Vietnamese',
    'Greek',
    'Spanish',
    'Middle Eastern',
    'Caribbean',
  ];

  static const _recipeTypes = [
    'Breakfast',
    'Lunch',
    'Dinner',
    'Dessert',
    'Appetizer',
    'Soup',
    'Salad',
    'Snack',
    'Side Dish',
    'Beverage',
  ];

  @override
  Widget build(BuildContext context) {
    final recipeBloc = getIt<RecipeBloc>();
    return BlocListener<RecipeBloc, RecipeState>(
      bloc: recipeBloc,
      listenWhen: (previous, current) =>
          previous.suggestionsLoadingState != RecipeLoadingState.success &&
          current.suggestionsLoadingState == RecipeLoadingState.success,
      listener: (context, state) {
        if (state.recipeSessions.isNotEmpty) {
          context.go(Routes.recipes);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PreferenceChipSection(
                    title: 'Cuisines',
                    defaultItems: _foodCategories,
                    selector: (state) => (
                      selected: state.selectedCuisines,
                      custom: state.customCuisines,
                      hidden: state.hiddenCuisines,
                    ),
                    onToggle: (item) => recipeBloc.add(
                      RecipeEvent.toggleCategory(item),
                    ),
                    onClear: () => recipeBloc.add(
                      const RecipeEvent.clearCuisines(),
                    ),
                    onAddCustom: (item) => recipeBloc.add(
                      RecipeEvent.addCustomCuisine(item),
                    ),
                    onRemoveCustom: (item) => recipeBloc.add(
                      RecipeEvent.removeCustomCuisine(item),
                    ),
                    onRemoveDefault: (item) => recipeBloc.add(
                      RecipeEvent.hideCuisine(item),
                    ),
                    dialogTitle: 'Add Custom Cuisine',
                    dialogLabelText: 'Cuisine name',
                    dialogHintText: 'e.g., Brazilian, Ethiopian',
                  ),
                  const SizedBox(height: 16),

                  PreferenceChipSection(
                    title: 'Recipe Types',
                    defaultItems: _recipeTypes,
                    selector: (state) => (
                      selected: state.selectedRecipeTypes,
                      custom: state.customRecipeTypes,
                      hidden: state.hiddenRecipeTypes,
                    ),
                    onToggle: (item) => recipeBloc.add(
                      RecipeEvent.toggleRecipeType(item),
                    ),
                    onClear: () => recipeBloc.add(
                      const RecipeEvent.clearRecipeTypes(),
                    ),
                    onAddCustom: (item) => recipeBloc.add(
                      RecipeEvent.addCustomRecipeType(item),
                    ),
                    onRemoveCustom: (item) => recipeBloc.add(
                      RecipeEvent.removeCustomRecipeType(item),
                    ),
                    onRemoveDefault: (item) => recipeBloc.add(
                      RecipeEvent.hideRecipeType(item),
                    ),
                    dialogTitle: 'Add Custom Recipe Type',
                    dialogLabelText: 'Recipe type',
                    dialogHintText: 'e.g., Brunch, Smoothie',
                  ),
                  const SizedBox(height: 16),
                  _PantrySummary(
                    onManage: () => const StockPantryRoute().go(context),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BlocBuilder<RecipeBloc, RecipeState>(
          bloc: recipeBloc,
          buildWhen: (previous, current) =>
              previous.suggestionsLoadingState !=
              current.suggestionsLoadingState,
          builder: (context, state) {
            final isLoading =
                state.suggestionsLoadingState == RecipeLoadingState.loading;

            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: FilledButton.icon(
                  onPressed: isLoading
                      ? null
                      : () {
                          recipeBloc.add(
                            const RecipeEvent.fetchRecipeSuggestions(),
                          );
                        },
                  icon: isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Icon(Icons.restaurant),
                  label: Text(
                    isLoading ? 'Generating...' : 'Get Recipe Suggestions',
                  ),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _showAddCustomDialog(
    BuildContext context, {
    required String title,
    required String labelText,
    required String hintText,
    required void Function(String item) onAdd,
  }) async {
    final items = await AddCustomItemDialog.show(
      context: context,
      title: title,
      labelText: labelText,
      hintText: hintText,
    );
    if (items == null) return;
    items.forEach(onAdd);
  }
}

class _PantrySummary extends StatelessWidget {
  const _PantrySummary({required this.onManage});

  final VoidCallback onManage;

  @override
  Widget build(BuildContext context) {
    final pantryBloc = getIt<PantryBloc>();
    final recipeBloc = getIt<RecipeBloc>();

    return BlocSelector<PantryBloc, PantryState, List<PantryItem>>(
      bloc: pantryBloc,
      selector: (state) => state.pantryItems,
      builder: (context, pantryItems) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pantry (${pantryItems.length})',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => recipeBloc.add(
                        const RecipeEvent.clearPantrySelection(),
                      ),
                      icon: const Icon(Icons.deselect),
                      tooltip: 'Clear pantry selection',
                    ),
                    IconButton.filled(
                      onPressed: onManage,
                      icon: const Icon(Icons.edit),
                      tooltip: 'Manage pantry',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (pantryItems.isEmpty)
              Text(
                'No items yet. Tap edit to stock your pantry.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
              )
            else
              BlocSelector<RecipeBloc, RecipeState, List<String>>(
                bloc: recipeBloc,
                selector: (state) => state.selectedPantryItems,
                builder: (context, selectedItems) {
                  final noneSelected = selectedItems.isEmpty;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocSelector<RecipeBloc, RecipeState, bool>(
                        bloc: recipeBloc,
                        selector: (state) => state.strictIngredients,
                        builder: (context, strict) {
                          return Row(
                            children: [
                              Expanded(
                                child: Text(
                                  strict
                                      ? 'Only use these ingredients'
                                      : 'Use as a base',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.outline,
                                      ),
                                ),
                              ),
                              Switch(
                                value: strict,
                                onChanged: (_) => recipeBloc.add(
                                  const RecipeEvent.toggleStrictIngredients(),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              noneSelected
                                  ? 'Using all items. Select to narrow down.'
                                  : '${selectedItems.length} of '
                                        '${pantryItems.length} selected',
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.outline,
                                  ),
                            ),
                          ),
                          FilterChip(
                            label: const Text('All'),
                            selected: noneSelected,
                            onSelected: (_) => recipeBloc.add(
                              const RecipeEvent.clearPantrySelection(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      ..._buildCategoryGroups(
                        pantryItems,
                        selectedItems,
                        recipeBloc,
                        context,
                      ),
                    ],
                  );
                },
              ),
          ],
        );
      },
    );
  }

  List<Widget> _buildCategoryGroups(
    List<PantryItem> items,
    List<String> selectedItems,
    RecipeBloc recipeBloc,
    BuildContext context,
  ) {
    final grouped = <PantryCategory, List<PantryItem>>{};
    for (final item in items) {
      grouped.putIfAbsent(item.category, () => []).add(item);
    }
    final sortedCategories = grouped.keys.toList()
      ..sort((a, b) => a.index.compareTo(b.index));

    return [
      for (final category in sortedCategories) ...[
        Text(
          category.displayName,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: grouped[category]!.map((item) {
            final isSelected = selectedItems.contains(item.name);
            return FilterChip(
              label: Text(item.name),
              selected: isSelected,
              onSelected: (_) => recipeBloc.add(
                RecipeEvent.togglePantryItem(item.name),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 12),
      ],
    ];
  }
}
