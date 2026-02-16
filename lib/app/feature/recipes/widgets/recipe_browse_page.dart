// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fork_cast/app/core/core.dart';
// import 'package:fork_cast/app/core/dependencies/dependencies.dart';
// import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';

// /// {@template recipe_browse_page}
// /// A single full-screen page in the recipe browse view
// /// showing the recipe image with an info overlay.
// /// {@endtemplate}
// class RecipeBrowsePage extends StatelessWidget {
//   /// {@macro recipe_browse_page}
//   const RecipeBrowsePage({
//     required this.recipe,
//     required this.onViewDetails,
//     super.key,
//   });

//   /// The recipe to display.
//   final Recipe recipe;

//   /// Callback when the user taps to view full details.
//   final VoidCallback onViewDetails;

//   @override
//   Widget build(BuildContext context) {
//     final recipeBloc = getIt<RecipeBloc>();
//     final imageKey = '${recipe.cuisine}-${recipe.name}'.toLowerCase();

//     return BlocSelector<
//       RecipeBloc,
//       RecipeState,
//       ({String? imagePath, ImageLoadingState? imageState, bool isFavorite})
//     >(
//       bloc: recipeBloc,
//       selector: (state) => (
//         imagePath: state.recipeImagePaths[imageKey],
//         imageState: state.recipeImageLoadingStates[imageKey],
//         isFavorite: state.favoriteRecipes.contains(recipe),
//       ),
//       builder: (context, data) {
//         return Stack(
//           fit: StackFit.expand,
//           children: [
//             _buildBackground(
//               context,
//               data.imagePath,
//               data.imageState,
//             ),
//             const DecoratedBox(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Colors.transparent,
//                     Colors.transparent,
//                     Colors.black54,
//                   ],
//                   stops: [0.0, 0.4, 1.0],
//                 ),
//               ),
//             ),
//             _buildInfoOverlay(
//               context,
//               data.isFavorite,
//               recipeBloc,
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Widget _buildBackground(
//     BuildContext context,
//     String? imagePath,
//     ImageLoadingState? imageState,
//   ) {
//     if (imagePath != null && File(imagePath).existsSync()) {
//       return Image.file(
//         File(imagePath),
//         fit: BoxFit.cover,
//         width: double.infinity,
//         height: double.infinity,
//       );
//     }

//     final colorScheme = Theme.of(context).colorScheme;

//     if (imageState == ImageLoadingState.loading) {
//       return ColoredBox(
//         color: colorScheme.surfaceContainerHighest,
//         child: const Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               CircularProgressIndicator(),
//               SizedBox(height: 16),
//               Text('Generating image...'),
//             ],
//           ),
//         ),
//       );
//     }

//     return ColoredBox(
//       color: colorScheme.surfaceContainerHighest,
//       child: Center(
//         child: Icon(
//           Icons.restaurant,
//           size: 64,
//           color: colorScheme.onSurfaceVariant,
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoOverlay(
//     BuildContext context,
//     bool isFavorite,
//     RecipeBloc recipeBloc,
//   ) {
//     final theme = Theme.of(context);
//     return Positioned(
//       left: 16,
//       right: 16,
//       bottom: 32,
//       child: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               recipe.name,
//               style: theme.textTheme.headlineMedium?.copyWith(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Wrap(
//               spacing: 8,
//               children: [
//                 Chip(
//                   label: Text(recipe.cuisine),
//                   backgroundColor: Colors.white24,
//                   labelStyle: const TextStyle(color: Colors.white),
//                 ),
//                 Chip(
//                   label: Text(recipe.difficulty),
//                   backgroundColor: Colors.white24,
//                   labelStyle: const TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8),
//             Row(
//               children: [
//                 const Icon(
//                   Icons.access_time,
//                   size: 16,
//                   color: Colors.white70,
//                 ),
//                 const SizedBox(width: 4),
//                 Text(
//                   recipe.prepTime,
//                   style: const TextStyle(color: Colors.white70),
//                 ),
//                 const SizedBox(width: 16),
//                 const Icon(
//                   Icons.people,
//                   size: 16,
//                   color: Colors.white70,
//                 ),
//                 const SizedBox(width: 4),
//                 Text(
//                   '${recipe.servings} servings',
//                   style: const TextStyle(color: Colors.white70),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 12),
//             Text(
//               recipe.description,
//               style: const TextStyle(color: Colors.white),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 16),
//             Row(
//               children: [
//                 FilledButton.icon(
//                   onPressed: onViewDetails,
//                   icon: const Icon(Icons.restaurant_menu),
//                   label: const Text('View Recipe'),
//                 ),
//                 const SizedBox(width: 12),
//                 IconButton(
//                   onPressed: () {
//                     recipeBloc.add(
//                       RecipeEvent.toggleFavoriteRecipe(
//                         recipe,
//                       ),
//                     );
//                   },
//                   icon: Icon(
//                     isFavorite ? Icons.favorite : Icons.favorite_border,
//                     color: isFavorite ? Colors.red : Colors.white,
//                     size: 32,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
