import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';
import 'package:fork_cast/app/feature/recipes/widgets/recipe_card.dart';
import 'package:fork_cast/app/navigation/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

/// {@template recipes_view}
/// Displays recipe generation history organized by session.
/// {@endtemplate}
class RecipesView extends StatelessWidget {
  /// {@macro recipes_view}
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    final recipeBloc = getIt<RecipeBloc>();

    return BlocBuilder<RecipeBloc, RecipeState>(
      bloc: recipeBloc,
      builder: (context, state) {
        if (state.recipeSessions.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.dinner_dining, size: 64),
                const SizedBox(height: 16),
                Text(
                  'No recipes yet',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                const Text('Generate some recipes to see them here'),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: () => context.go(Routes.preferences),
                  child: const Text('Get Started'),
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
                itemCount: state.recipeSessions.length,
                itemBuilder: (context, index) {
                  final session = state.recipeSessions[index];
                  final dateFormat = DateFormat('MMM d, y • h:mm a');

                  return Card(
                    child: ExpansionTile(
                      initiallyExpanded: index == 0,
                      shape: const Border(),
                      collapsedShape: const Border(),
                      leading: const Icon(Icons.restaurant),
                      title: Text(
                        dateFormat.format(session.createdAt),
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (session.cuisines.isNotEmpty) ...[
                              Wrap(
                                spacing: 4,
                                children: session.cuisines
                                    .map(
                                      (cuisine) => Chip(
                                        label: Text(cuisine),
                                        visualDensity: VisualDensity.compact,
                                      ),
                                    )
                                    .toList(),
                              ),
                              const SizedBox(height: 4),
                            ],
                            if (session.ingredients.isNotEmpty)
                              Wrap(
                                spacing: 4,
                                children: session.ingredients
                                    .map(
                                      (ingredient) => Chip(
                                        label: Text(ingredient),
                                        avatar: const Icon(
                                          Icons.food_bank,
                                          size: 16,
                                        ),
                                        visualDensity: VisualDensity.compact,
                                      ),
                                    )
                                    .toList(),
                              ),
                          ],
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${session.recipes.length}'
                                ' recipes',
                                style: Theme.of(context).textTheme.titleSmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: 12),
                              for (final recipe in session.recipes)
                                RecipeCard(
                                  recipe: recipe,
                                  isFavorite: state.favoriteRecipes.contains(
                                    recipe,
                                  ),
                                  imagePath:
                                      state
                                          .recipeImagePaths['${recipe.cuisine}-${recipe.name}'
                                          .toLowerCase()],
                                  onTap: () {
                                    context.push(
                                      Routes.recipeDetail,
                                      extra: recipe,
                                    );
                                  },
                                  onFavorite: () {
                                    recipeBloc.add(
                                      RecipeEvent.toggleFavoriteRecipe(recipe),
                                    );
                                  },
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
