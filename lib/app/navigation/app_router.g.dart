// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$appShellRouteData, $stockPantryRoute];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
  factory: $AppShellRouteDataExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/preferences',
          factory: $SelectPreferencesRoute._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/recipes',
          factory: $RecipesRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: ':recipe',
              factory: $RecipeDetailRoute._fromState,
            ),
          ],
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/favorites',
          factory: $RecipeFavoritesRoute._fromState,
        ),
      ],
    ),
  ],
);

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

mixin $SelectPreferencesRoute on GoRouteData {
  static SelectPreferencesRoute _fromState(GoRouterState state) =>
      const SelectPreferencesRoute();

  @override
  String get location => GoRouteData.$location('/preferences');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $RecipesRoute on GoRouteData {
  static RecipesRoute _fromState(GoRouterState state) => const RecipesRoute();

  @override
  String get location => GoRouteData.$location('/recipes');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $RecipeDetailRoute on GoRouteData {
  static RecipeDetailRoute _fromState(GoRouterState state) => RecipeDetailRoute(
    recipe: (String json0) {
      return Recipe.fromJson(jsonDecode(json0) as Map<String, dynamic>);
    }(state.pathParameters['recipe']!),
  );

  RecipeDetailRoute get _self => this as RecipeDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/recipes/${Uri.encodeComponent(jsonEncode(_self.recipe.toJson()))}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $RecipeFavoritesRoute on GoRouteData {
  static RecipeFavoritesRoute _fromState(GoRouterState state) =>
      const RecipeFavoritesRoute();

  @override
  String get location => GoRouteData.$location('/favorites');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $stockPantryRoute =>
    GoRouteData.$route(path: '/pantry', factory: $StockPantryRoute._fromState);

mixin $StockPantryRoute on GoRouteData {
  static StockPantryRoute _fromState(GoRouterState state) =>
      const StockPantryRoute();

  @override
  String get location => GoRouteData.$location('/pantry');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
