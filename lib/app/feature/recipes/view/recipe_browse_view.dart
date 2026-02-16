// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fork_cast/app/core/core.dart';
// import 'package:fork_cast/app/core/dependencies/dependencies.dart';
// import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart';
// import 'package:fork_cast/app/feature/recipes/widgets/recipe_browse_page.dart';
// import 'package:fork_cast/app/navigation/routes.dart';
// import 'package:go_router/go_router.dart';

// /// {@template recipe_browse_view}
// /// A full-screen vertical scrolling view that displays
// /// recipe suggestions one at a time, Instagram Reels
// /// style. Reads recipes from the bloc by session ID and
// /// loads additional recipes as the user scrolls.
// /// {@endtemplate}
// class RecipeBrowseView extends StatefulWidget {
//   /// {@macro recipe_browse_view}
//   const RecipeBrowseView({
//     required this.sessionId,
//     super.key,
//   });

//   /// The session ID to read recipes from.
//   final String sessionId;

//   @override
//   State<RecipeBrowseView> createState() => _RecipeBrowseViewState();
// }

// class _RecipeBrowseViewState extends State<RecipeBrowseView> {
//   late final PageController _pageController;
//   late final RecipeBloc _recipeBloc;
//   int _currentPage = 0;

//   static const _buffer = 5;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//     _recipeBloc = getIt<RecipeBloc>();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   void _ensureBuffer(int currentRecipeCount) {
//     final target = _currentPage + _buffer;
//     if (target > currentRecipeCount) {
//       _recipeBloc.add(
//         FetchAdditionalRecipes(
//           sessionId: widget.sessionId,
//           targetCount: target,
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocSelector<RecipeBloc, RecipeState, List<Recipe>>(
//       bloc: _recipeBloc,
//       selector: (state) {
//         final session = state.recipeSessions
//             .where((s) => s.id == widget.sessionId)
//             .firstOrNull;
//         return session?.recipes ?? [];
//       },
//       builder: (context, recipes) {
//         return Scaffold(
//           extendBodyBehindAppBar: true,
//           appBar: AppBar(
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             foregroundColor: Colors.white,
//             title: Text(
//               '${_currentPage + 1} / ${recipes.length}',
//             ),
//           ),
//           body: PageView.builder(
//             scrollDirection: Axis.vertical,
//             controller: _pageController,
//             itemCount: recipes.length,
//             onPageChanged: (index) {
//               setState(() => _currentPage = index);
//               _ensureBuffer(recipes.length);
//             },
//             itemBuilder: (context, index) {
//               final recipe = recipes[index];
//               return RecipeBrowsePage(
//                 recipe: recipe,
//                 onViewDetails: () async {
//                   await context.push<void>(
//                     Routes.recipeDetail,
//                     extra: recipe,
//                   );
//                 },
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }
