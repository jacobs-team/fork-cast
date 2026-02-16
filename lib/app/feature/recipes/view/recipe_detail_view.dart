import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/core.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';

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

    return BlocBuilder<RecipeBloc, RecipeState>(
      bloc: recipeBloc,
      builder: (context, state) {
        var currentRecipe = recipe;
        for (final session in state.recipeSessions) {
          final found = session.recipes.where((r) => r == recipe).firstOrNull;
          if (found != null) {
            currentRecipe = found;
            break;
          }
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(currentRecipe.name),
            actions: [
              IconButton(
                icon: Icon(
                  currentRecipe.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: currentRecipe.isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  recipeBloc.add(
                    RecipeEvent.toggleFavoriteRecipe(currentRecipe),
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
                Row(
                  children: [
                    Chip(
                      label: Text(currentRecipe.cuisine),
                      backgroundColor: colorScheme.secondaryContainer,
                      labelStyle: TextStyle(
                        color: colorScheme.onSecondaryContainer,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Chip(
                      label: Text(currentRecipe.difficulty),
                      backgroundColor: _getDifficultyColor(
                        currentRecipe.difficulty,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                Row(
                  children: [
                    const Icon(Icons.access_time, size: 20),
                    const SizedBox(width: 4),
                    Text(currentRecipe.prepTime),
                    const SizedBox(width: 24),
                    const Icon(Icons.people, size: 20),
                    const SizedBox(width: 4),
                    Text('${currentRecipe.servings} servings'),
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
                  currentRecipe.description,
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
                      children: currentRecipe.ingredients.map((ingredient) {
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
                if (currentRecipe.ingredients.any((i) => i.isMainIngredient))
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
                ...currentRecipe.instructions.asMap().entries.map((entry) {
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
