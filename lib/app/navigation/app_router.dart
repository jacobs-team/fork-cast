// coverage:ignore-file

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fork_cast/app/core/core.dart';
import 'package:fork_cast/app/feature/feature.dart';
import 'package:fork_cast/app/navigation/navigation_wrapper.dart';
import 'package:fork_cast/app/navigation/routes.dart';
import 'package:fork_cast/l10n/l10n.dart';
import 'package:go_router/go_router.dart';

part 'app_router.g.dart';

/// {@template app_router}
/// Central navigation configuration using [GoRouter] and type-safe routes.
/// {@endtemplate}
class AppRouter {
  /// The global [GoRouter] instance.
  static final router = GoRouter(
    initialLocation: Routes.preferences,
    debugLogDiagnostics: kDebugMode,
    routes: $appRoutes,
  );

  static List<NavigationDestination> destinations(AppLocalizations l10n) => [
    NavigationDestination(
      icon: const Icon(Icons.tune_outlined),
      selectedIcon: const Icon(Icons.tune),
      label: l10n.preferences,
    ),
    NavigationDestination(
      icon: const Icon(Icons.dinner_dining_outlined),
      selectedIcon: const Icon(Icons.dinner_dining),
      label: l10n.recipes,
    ),
    NavigationDestination(
      icon: const Icon(Icons.favorite_outline),
      selectedIcon: const Icon(Icons.favorite),
      label: l10n.favorites,
    ),
  ];
}

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: [
    TypedStatefulShellBranch<PreferencesBranchData>(
      routes: [
        TypedGoRoute<SelectPreferencesRoute>(path: Routes.preferences),
      ],
    ),
    TypedStatefulShellBranch<RecipesBranchData>(
      routes: [
        TypedGoRoute<RecipesRoute>(
          path: Routes.recipes,
          routes: [
            TypedGoRoute<RecipeDetailRoute>(path: ':recipe'),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<FavoritesBranchData>(
      routes: [
        TypedGoRoute<RecipeFavoritesRoute>(path: Routes.favorites),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return NavigationWrapper(navigationShell: navigationShell);
  }
}

class PreferencesBranchData extends StatefulShellBranchData {
  const PreferencesBranchData();
}

class RecipesBranchData extends StatefulShellBranchData {
  const RecipesBranchData();
}

class FavoritesBranchData extends StatefulShellBranchData {
  const FavoritesBranchData();
}

class SelectPreferencesRoute extends GoRouteData with $SelectPreferencesRoute {
  const SelectPreferencesRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SelectPreferencesView();
}

class RecipesRoute extends GoRouteData with $RecipesRoute {
  const RecipesRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RecipesView();
}

class RecipeFavoritesRoute extends GoRouteData with $RecipeFavoritesRoute {
  const RecipeFavoritesRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RecipeFavoritesView();
}

class RecipeDetailRoute extends GoRouteData with $RecipeDetailRoute {
  const RecipeDetailRoute({required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      RecipeDetailView(recipe: recipe);
}
