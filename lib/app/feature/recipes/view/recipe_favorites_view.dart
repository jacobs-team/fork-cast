import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';
import 'package:fork_cast/app/feature/recipes/widgets/recipe_card.dart';
import 'package:fork_cast/app/navigation/routes.dart';
import 'package:go_router/go_router.dart';

/// {@template recipe_favorites_view}
/// Displays all favorited recipes in a responsive grid.
/// {@endtemplate}
class RecipeFavoritesView extends StatelessWidget {
  /// {@macro recipe_favorites_view}
  const RecipeFavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final recipeBloc = getIt<RecipeBloc>();

    return BlocBuilder<RecipeBloc, RecipeState>(
      bloc: recipeBloc,
      builder: (context, state) {
        final favoriteRecipes = state.favoriteRecipes;

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
                  RecipeEvent.toggleFavoriteRecipe(recipe),
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
