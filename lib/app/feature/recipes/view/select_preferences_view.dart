import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';
import 'package:fork_cast/app/feature/recipes/widgets/add_custom_item_dialog.dart';
import 'package:fork_cast/app/feature/recipes/widgets/preference_chip_section.dart';
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
                                : 'Recipes will use selected '
                                      'ingredients as a base',
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
                  PreferenceChipSection(
                    title: 'Cuisines',
                    defaultItems: _foodCategories,
                    selector: (state) => (
                      selected: state.selectedCuisines,
                      custom: state.customCuisines,
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
                    dialogTitle: 'Add Custom Cuisine',
                    dialogLabelText: 'Cuisine name',
                    dialogHintText: 'e.g., Brazilian, Ethiopian',
                  ),
                  const SizedBox(height: 16),
                  PreferenceChipSection(
                    title: 'Ingredients',
                    defaultItems: _popularIngredients,
                    selector: (state) => (
                      selected: state.selectedIngredients,
                      custom: state.customIngredients,
                    ),
                    onToggle: (item) => recipeBloc.add(
                      RecipeEvent.toggleIngredient(item),
                    ),
                    onClear: () => recipeBloc.add(
                      const RecipeEvent.clearIngredients(),
                    ),
                    onAddCustom: (item) => recipeBloc.add(
                      RecipeEvent.addCustomIngredient(item),
                    ),
                    onRemoveCustom: (item) => recipeBloc.add(
                      RecipeEvent.removeCustomIngredient(
                        item,
                      ),
                    ),
                    dialogTitle: 'Add Custom Ingredient',
                    dialogLabelText: 'Ingredient name',
                    dialogHintText: 'e.g., Quinoa, Kale',
                  ),
                  const SizedBox(height: 16),
                  PreferenceChipSection(
                    title: 'Recipe Types',
                    defaultItems: _recipeTypes,
                    selector: (state) => (
                      selected: state.selectedRecipeTypes,
                      custom: state.customRecipeTypes,
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
                      RecipeEvent.removeCustomRecipeType(
                        item,
                      ),
                    ),
                    dialogTitle: 'Add Custom Recipe Type',
                    dialogLabelText: 'Recipe type',
                    dialogHintText: 'e.g., Brunch, Smoothie',
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
