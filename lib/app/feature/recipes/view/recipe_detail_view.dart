import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/core.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';
import 'package:fork_cast/app/feature/recipes/widgets/widgets.dart';

/// {@template recipe_detail_view}
/// A stateless widget that displays full recipe details including
/// ingredients and instructions.
/// {@endtemplate}
class RecipeDetailView extends StatelessWidget {
  /// {@macro recipe_detail_view}
  const RecipeDetailView({
    required this.recipe,
    super.key,
  });

  /// The recipe to display.
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    final recipeBloc = getIt<RecipeBloc>();
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final imageKey = '${recipe.cuisine}-${recipe.name}'.toLowerCase();

    return BlocSelector<
      RecipeBloc,
      RecipeState,
      ({bool isFavorite, String? imagePath})
    >(
      bloc: recipeBloc,
      selector: (state) => (
        isFavorite: state.favoriteRecipes.contains(recipe),
        imagePath: state.recipeImagePaths[imageKey],
      ),
      builder: (context, data) {
        final isFavorite = data.isFavorite;
        final imagePath = data.imagePath;
        final hasImage = imagePath != null && imagePath.isNotEmpty;

        return Scaffold(
          appBar: AppBar(
            title: Text(recipe.name),
            actions: [
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  recipeBloc.add(
                    RecipeEvent.toggleFavoriteRecipe(recipe),
                  );
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (hasImage) RecipeImage(recipe: recipe, imageUrl: imagePath),
                Row(
                  children: [
                    Chip(
                      label: Text(recipe.cuisine),
                      backgroundColor: colorScheme.secondaryContainer,
                      labelStyle: TextStyle(
                        color: colorScheme.onSecondaryContainer,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Chip(
                      label: Text(recipe.difficulty),
                      backgroundColor: _getDifficultyColor(
                        recipe.difficulty,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                Row(
                  children: [
                    const Icon(Icons.access_time, size: 20),
                    const SizedBox(width: 4),
                    Text(recipe.prepTime),
                    const SizedBox(width: 24),
                    const Icon(Icons.people, size: 20),
                    const SizedBox(width: 4),
                    Text('${recipe.servings} servings'),
                  ],
                ),
                const SizedBox(height: 24),

                Text(
                  'Description',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  recipe.description,
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(height: 24),

                Text(
                  'Ingredients',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: recipe.ingredients.map((ingredient) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Icon(
                                ingredient.isMainIngredient
                                    ? Icons.star
                                    : Icons.circle,
                                size: ingredient.isMainIngredient ? 18 : 8,
                                color: ingredient.isMainIngredient
                                    ? colorScheme.primary
                                    : colorScheme.onSurfaceVariant,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  ingredient.name,
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    fontWeight: ingredient.isMainIngredient
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                ingredient.amount,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                if (recipe.ingredients.any((i) => i.isMainIngredient))
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: colorScheme.primary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Your selected ingredients',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 24),

                Text(
                  'Instructions',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                ...recipe.instructions.asMap().entries.map((entry) {
                  final index = entry.key;
                  final instruction = entry.value;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: colorScheme.primary,
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                              color: colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            instruction,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'easy':
        return Colors.green.shade100;
      case 'medium':
        return Colors.orange.shade100;
      case 'hard':
        return Colors.red.shade100;
      default:
        return Colors.grey.shade100;
    }
  }
}
