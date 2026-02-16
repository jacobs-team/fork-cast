import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/app/core/core.dart';
import 'package:flutter_template/app/core/dependencies/dependencies.dart';
import 'package:flutter_template/app/feature/recipes/bloc/recipe_bloc.dart';
import 'package:flutter_template/app/feature/recipes/widgets/recipe_card.dart';
import 'package:flutter_template/app/navigation/routes.dart';
import 'package:go_router/go_router.dart';

/// View that displays all favorited recipes.
class RecipeFavoritesView extends StatelessWidget {
  /// Creates a recipe favorites view.
  const RecipeFavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final recipeBloc = getIt<RecipeBloc>();

    return BlocBuilder<RecipeBloc, RecipeState>(
      bloc: recipeBloc,
      builder: (context, state) {
        // Collect all favorite recipes from all sessions
        final favoriteRecipes = <Recipe>[];
        for (final session in state.recipeSessions) {
          favoriteRecipes.addAll(
            session.recipes.where((recipe) => recipe.isFavorite),
          );
        }

        // Empty state
        if (favoriteRecipes.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.favorite_border, size: 64),
                const SizedBox(height: 16),
                Text(
                  'No favorite recipes yet',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                const Text('Tap the heart icon on recipes you love'),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: () => context.go(Routes.selectPreferences),
                  child: const Text('Discover Recipes'),
                ),
              ],
            ),
          );
        }

        // Show favorites grid
        return GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: _getMaxCrossAxisExtent(context),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.75,
          ),
          itemCount: favoriteRecipes.length,
          itemBuilder: (context, index) {
            final recipe = favoriteRecipes[index];
            return RecipeCard(
              recipe: recipe,
              onTap: () {
                context.push(Routes.recipeDetail, extra: recipe);
              },
              onFavorite: () {
                recipeBloc.add(
                  RecipeEvent.toggleFavoriteRecipe(recipe.id),
                );
              },
            );
          },
        );
      },
    );
  }

  double _getMaxCrossAxisExtent(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return 400; // Mobile: single column
    if (width < 900) return 350; // Tablet: 2 columns
    return 320; // Desktop: 3+ columns
  }
}
