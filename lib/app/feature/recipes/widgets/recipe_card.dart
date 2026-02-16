import 'package:flutter/material.dart';
import 'package:flutter_template/app/core/core.dart';

/// {@template recipe_card}
/// A card widget displaying a recipe summary with favorite toggle.
/// {@endtemplate}
class RecipeCard extends StatelessWidget {
  /// {@macro recipe_card}
  const RecipeCard({
    required this.recipe,
    required this.onTap,
    required this.onFavorite,
    super.key,
  });

  /// The recipe to display.
  final Recipe recipe;

  /// Callback when the card is tapped.
  final VoidCallback onTap;

  /// Callback when the favorite button is tapped.
  final VoidCallback onFavorite;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with name and favorite button
              Row(
                children: [
                  Expanded(
                    child: Text(
                      recipe.name,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      recipe.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: recipe.isFavorite ? Colors.red : null,
                    ),
                    onPressed: onFavorite,
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Cuisine badge
              Chip(
                label: Text(recipe.cuisine),
                backgroundColor: colorScheme.secondaryContainer,
                labelStyle: TextStyle(color: colorScheme.onSecondaryContainer),
                padding: const EdgeInsets.symmetric(horizontal: 8),
              ),
              const SizedBox(height: 12),

              // Main ingredients
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: recipe.mainIngredients.take(4).map((ingredient) {
                  return Chip(
                    label: Text(ingredient),
                    visualDensity: VisualDensity.compact,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                  );
                }).toList(),
              ),
              const SizedBox(height: 12),

              Text(
                recipe.description,
                style: theme.textTheme.bodyMedium,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),

              Row(
                children: [
                  const Icon(Icons.access_time, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    recipe.prepTime,
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.signal_cellular_alt, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    recipe.difficulty,
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.people, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    '${recipe.servings}',
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
