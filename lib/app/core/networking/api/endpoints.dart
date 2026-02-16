// coverage:ignore-file

/// Centralized endpoint definitions for all services.
///
/// Use namespaces for service groups:
/// * [Endpoints.coffee] for coffee services.
/// * [Endpoints.recipe] for recipe AI services.
abstract final class Endpoints {
  /// Endpoints related to coffee services.
  static const coffee = CoffeeRoutes._();

  /// Endpoints related to recipe AI services.
  static const recipe = RecipeRoutes._();
}

/// Namespace for Coffee endpoints.
final class CoffeeRoutes {
  const CoffeeRoutes._();

  /// Path: /random.json
  String get random => '/random.json';
}

/// Namespace for Recipe AI endpoints.
final class RecipeRoutes {
  const RecipeRoutes._();

  /// Path: /v1/chat/completions (OpenAI API endpoint)
  String get suggestions => '/v1/chat/completions';
}
