// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fork_cast/app/core/dependencies/dependencies.dart';
// import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';
// import 'package:fork_cast/app/feature/recipes/widgets/recipe_card.dart';
// import 'package:fork_cast/app/navigation/routes.dart';
// import 'package:go_router/go_router.dart';

// /// View that displays AI-generated recipe suggestions in a responsive grid.
// class RecipeSuggestionsView extends StatelessWidget {
//   /// Creates a recipe suggestions view.
//   const RecipeSuggestionsView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final recipeBloc = getIt<RecipeBloc>();

//     return BlocBuilder<RecipeBloc, RecipeState>(
//       bloc: recipeBloc,
//       builder: (context, state) {
//           // Loading state
//           if (state.suggestionsLoadingState == RecipeLoadingState.loading) {
//             return const Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CircularProgressIndicator(),
//                   SizedBox(height: 16),
//                   Text('Generating recipe suggestions...'),
//                 ],
//               ),
//             );
//           }

//           // Error state
//           if (state.suggestionsLoadingState == RecipeLoadingState.failure) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.error_outline, size: 64, color: Colors.red),
//                   const SizedBox(height: 16),
//                   Text(
//                     state.suggestionsErrorMessage ?? 'Failed to load recipes',
//                     style: Theme.of(context).textTheme.titleMedium,
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 24),
//                   FilledButton.icon(
//                     onPressed: () {
//                       recipeBloc.add(const RecipeEvent.fetchRecipeSuggestions());
//                     },
//                     icon: const Icon(Icons.refresh),
//                     label: const Text('Retry'),
//                   ),
//                 ],
//               ),
//             );
//           }

//           // Empty state
//           if (state.suggestedRecipes.isEmpty) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.restaurant_menu, size: 64),
//                   const SizedBox(height: 16),
//                   Text(
//                     'No recipes yet',
//                     style: Theme.of(context).textTheme.titleLarge,
//                   ),
//                   const SizedBox(height: 8),
//                   const Text('Select some categories and ingredients first'),
//                   const SizedBox(height: 24),
//                   FilledButton(
//                     onPressed: () => context.go(Routes.selectPreferences),
//                     child: const Text('Select Preferences'),
//                   ),
//                 ],
//               ),
//             );
//           }

//           // Success state with recipes
//           return GridView.builder(
//             padding: const EdgeInsets.all(16),
//             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//               maxCrossAxisExtent: _getMaxCrossAxisExtent(context),
//               mainAxisSpacing: 16,
//               crossAxisSpacing: 16,
//               childAspectRatio: 0.75,
//             ),
//             itemCount: state.suggestedRecipes.length,
//             itemBuilder: (context, index) {
//               final recipe = state.suggestedRecipes[index];
//               return RecipeCard(
//                 recipe: recipe,
//                 onTap: () {
//                   // Navigate to recipe detail
//                   context.push(Routes.recipeDetail, extra: recipe);
//                 },
//                 onFavorite: () {
//                   recipeBloc.add(
//                     RecipeEvent.toggleFavoriteRecipe(recipe.id),
//                   );
//                 },
//               );
//             },
//           );
//         },
//       );
//   }

//   double _getMaxCrossAxisExtent(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     if (width < 600) return 400; // Mobile: 1 column
//     if (width < 900) return 350; // Tablet: 2 columns
//     return 350; // Desktop: 3+ columns
//   }
// }
