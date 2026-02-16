import 'package:fork_cast/app/core/networking/model/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_session.freezed.dart';
part 'recipe_session.g.dart';

/// {@template recipe_session}
/// A session representing a single recipe generation request with its results.
/// {@endtemplate}
@freezed
abstract class RecipeSession with _$RecipeSession {
  /// {@macro recipe_session}
  const factory RecipeSession({
    required String id,
    required DateTime createdAt,
    required List<String> cuisines,
    required List<String> ingredients,
    required bool strictIngredients,
    required List<Recipe> recipes,
  }) = _RecipeSession;

  /// Creates a [RecipeSession] from JSON.
  factory RecipeSession.fromJson(Map<String, dynamic> json) =>
      _$RecipeSessionFromJson(json);
}
