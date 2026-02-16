import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';
import 'package:fork_cast/app/feature/recipes/widgets/recipe_card.dart';
import 'package:fork_cast/app/navigation/routes.dart';
import 'package:go_router/go_router.dart';

/// {@template recipe_favorites_view}
/// Displays all favorited recipes in a list.
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
                  onPressed: () => context.go(Routes.preferences),
                  child: const Text('Discover Recipes'),
                ),
              ],
            ),
          );
        }

        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList.builder(
                itemCount: favoriteRecipes.length,
                itemBuilder: (context, index) {
                  final recipe = favoriteRecipes[index];
                  return RecipeCard(
                    recipe: recipe,
                    isFavorite: true,
                    imagePath:
                        state
                            .recipeImagePaths['${recipe.cuisine}-${recipe.name}'
                            .toLowerCase()],
                    onTap: () {
                      context.go(
                        Routes.recipeDetail,
                        extra: recipe,
                      );
                    },
                    onFavorite: () {
                      recipeBloc.add(
                        RecipeEvent.toggleFavoriteRecipe(
                          recipe,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
