// coverage:ignore-file

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/app/core/networking/model/recipe.dart';
import 'package:flutter_template/app/feature/feature.dart';
import 'package:flutter_template/app/feature/recipes/view/recipe_detail_view.dart';
import 'package:flutter_template/app/feature/recipes/view/recipe_favorites_view.dart';
import 'package:flutter_template/app/feature/recipes/view/recipe_history_view.dart';
import 'package:flutter_template/app/feature/recipes/view/select_preferences_view.dart';
import 'package:flutter_template/app/navigation/navigation_wrapper.dart';
import 'package:flutter_template/app/navigation/routes.dart';
import 'package:flutter_template/l10n/l10n.dart';
import 'package:go_router/go_router.dart';

/// {@template app_router}
/// Central navigation configuration using [GoRouter].
///
/// Defines the application's routing structure, including [StatefulShellRoute]
/// for bottom and rail navigation, route guards via redirect, and UI
/// destinations.
/// {@endtemplate}
class AppRouter {
  /// The list of top-level and nested Routes.
  static final List<RouteBase> routes = [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.selectPreferences,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: SelectPreferencesView(),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.recipeResults,
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: RecipeResultsView());
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.recipeFavorites,
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: RecipeFavoritesView());
              },
            ),
          ],
        ),
      ],
      builder: (context, state, navigationShell) =>
          NavigationWrapper(navigationShell: navigationShell),
    ),
    GoRoute(
      path: Routes.recipeDetail,
      pageBuilder: (context, state) {
        final recipe = state.extra! as Recipe;
        return NoTransitionPage(
          child: RecipeDetailView(recipe: recipe),
        );
      },
    ),
    if (kDebugMode)
      GoRoute(
        path: Routes.devTools,
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: DevToolsView());
        },
      ),
  ];

  /// Data for rendering navigation bars or rails.
  static List<NavigationDestination> destinations(AppLocalizations l10n) => [
    NavigationDestination(
      icon: const Icon(Icons.tune_outlined),
      selectedIcon: const Icon(Icons.tune),
      label: l10n.preferences,
    ),
    NavigationDestination(
      icon: const Icon(Icons.dinner_dining_outlined),
      selectedIcon: const Icon(Icons.dinner_dining),
      label: l10n.results,
    ),
    NavigationDestination(
      icon: const Icon(Icons.favorite_outline),
      selectedIcon: const Icon(Icons.favorite),
      label: l10n.favorites,
    ),
  ];

  /// The global [GoRouter] instance used by the application.
  static GoRouter router = GoRouter(
    initialLocation: Routes.selectPreferences,
    // refreshListenable: getIt<AuthCubit>(),
    redirect: (context, state) {
      // final signedIn = getIt<AuthCubit>().state.signedIn;
      // final isSigningIn = state.uri.path.startsWith(Routes.signIn);

      // // If not signedIn and trying to access a protected route - Force signIn.
      // if (!signedIn && !isSigningIn) {
      //   return Routes.signIn;
      // }

      // // If signedIn and trying to access signIn -> Force coffee.
      // if (signedIn && isSigningIn) {
      //   return Routes.coffee;
      // }

      return null;
    },
    routes: routes,
  );
}
