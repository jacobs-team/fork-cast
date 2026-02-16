import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';

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

  static const _popularIngredients = [
    'Chicken',
    'Beef',
    'Pork',
    'Salmon',
    'Shrimp',
    'Tofu',
    'Pasta',
    'Rice',
    'Potatoes',
    'Tomatoes',
    'Mushrooms',
    'Cheese',
    'Eggs',
    'Beans',
    'Avocado',
  ];

  @override
  Widget build(BuildContext context) {
    final recipeBloc = getIt<RecipeBloc>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Strict Ingredients Toggle
                BlocSelector<RecipeBloc, RecipeState, bool>(
                  bloc: recipeBloc,
                  selector: (state) => state.strictIngredients,
                  builder: (context, strictIngredients) {
                    return Card(
                      child: SwitchListTile(
                        title: const Text('Strict Ingredients Only'),
                        subtitle: Text(
                          strictIngredients
                              ? 'Recipes will only use selected ingredients'
                              : 'Recipes will use selected ingredients as a base',
                        ),
                        value: strictIngredients,
                        onChanged: (_) {
                          recipeBloc.add(
                            const RecipeEvent.toggleStrictIngredients(),
                          );
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cuisines',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    IconButton.filled(
                      onPressed: () =>
                          _showAddCuisineDialog(context, recipeBloc),
                      icon: const Icon(Icons.add),
                      tooltip: 'Add custom cuisine',
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                BlocSelector<
                  RecipeBloc,
                  RecipeState,
                  ({List<String> selected, List<String> custom})
                >(
                  bloc: recipeBloc,
                  selector: (state) => (
                    selected: state.selectedCuisines,
                    custom: state.customCuisines,
                  ),
                  builder: (context, data) {
                    final allCuisines = [..._foodCategories, ...data.custom];
                    return Wrap(
                      spacing: 8,
                      children: allCuisines.map((cuisine) {
                        final isSelected = data.selected.contains(cuisine);

                        final isCustom = data.custom.contains(cuisine);
                        return FilterChip(
                          label: Text(cuisine),
                          selected: isSelected,
                          onSelected: (_) {
                            recipeBloc.add(
                              RecipeEvent.toggleCategory(cuisine),
                            );
                          },
                          deleteIcon: isCustom
                              ? const Icon(Icons.close, size: 18)
                              : null,
                          onDeleted: isCustom
                              ? () {
                                  recipeBloc.add(
                                    RecipeEvent.removeCustomCuisine(cuisine),
                                  );
                                }
                              : null,
                        );
                      }).toList(),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ingredients',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    IconButton.filled(
                      onPressed: () =>
                          _showAddIngredientDialog(context, recipeBloc),
                      icon: const Icon(Icons.add),
                      tooltip: 'Add custom ingredient',
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                BlocSelector<
                  RecipeBloc,
                  RecipeState,
                  ({List<String> selected, List<String> custom})
                >(
                  bloc: recipeBloc,
                  selector: (state) => (
                    selected: state.selectedIngredients,
                    custom: state.customIngredients,
                  ),
                  builder: (context, data) {
                    final allIngredients = [
                      ..._popularIngredients,
                      ...data.custom,
                    ];
                    return Wrap(
                      spacing: 8,
                      children: allIngredients.map((ingredient) {
                        final isSelected = data.selected.contains(ingredient);
                        final isCustom = data.custom.contains(ingredient);
                        return FilterChip(
                          label: Text(ingredient),
                          selected: isSelected,
                          onSelected: (_) {
                            recipeBloc.add(
                              RecipeEvent.toggleIngredient(ingredient),
                            );
                          },
                          deleteIcon: isCustom
                              ? const Icon(Icons.close, size: 18)
                              : null,
                          onDeleted: isCustom
                              ? () {
                                  recipeBloc.add(
                                    RecipeEvent.removeCustomIngredient(
                                      ingredient,
                                    ),
                                  );
                                }
                              : null,
                        );
                      }).toList(),
                    );
                  },
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BlocBuilder<RecipeBloc, RecipeState>(
        bloc: recipeBloc,
        buildWhen: (previous, current) =>
            previous.suggestionsLoadingState != current.suggestionsLoadingState,
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
    );
  }

  Future<void> _showAddCuisineDialog(
    BuildContext context,
    RecipeBloc recipeBloc,
  ) async {
    final controller = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Custom Cuisine'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(
            labelText: 'Cuisine name',
            hintText: 'e.g., Brazilian, Ethiopian',
          ),
          textCapitalization: TextCapitalization.words,
          onSubmitted: (value) => Navigator.of(context).pop(value),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(controller.text),
            child: const Text('Add'),
          ),
        ],
      ),
    );

    if (result != null && result.trim().isNotEmpty) {
      recipeBloc.add(RecipeEvent.addCustomCuisine(result));
    }
  }

  Future<void> _showAddIngredientDialog(
    BuildContext context,
    RecipeBloc recipeBloc,
  ) async {
    final controller = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Custom Ingredient'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(
            labelText: 'Ingredient name',
            hintText: 'e.g., Quinoa, Kale',
          ),
          textCapitalization: TextCapitalization.words,
          onSubmitted: (value) => Navigator.of(context).pop(value),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(controller.text),
            child: const Text('Add'),
          ),
        ],
      ),
    );

    if (result != null && result.trim().isNotEmpty) {
      recipeBloc.add(RecipeEvent.addCustomIngredient(result));
    }
  }
}
