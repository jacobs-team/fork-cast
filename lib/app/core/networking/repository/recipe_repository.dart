import 'dart:convert';

import 'package:flutter_template/app/core/core.dart';
import 'package:injectable/injectable.dart';

/// {@template recipe_repository}
/// A repository that handles data operations for AI-generated recipe suggestions.
/// {@endtemplate}
@singleton
class RecipeRepository {
  /// {@macro recipe_repository}
  RecipeRepository(this._recipeApi);

  final RecipeApi _recipeApi;

  /// Fetches recipe suggestions based on user-selected categories and ingredients.
  Future<List<Recipe>> getRecipeSuggestions({
    required List<String> cuisines,
    required List<String> ingredients,
    required bool strictIngredients,
  }) async {
    final response = await _recipeApi.getRecipeSuggestions(
      cuisines: cuisines,
      ingredients: ingredients,
      strictIngredients: strictIngredients,
    );

    final openAIResponse = mapJson(response.data, OpenAIApiResponse.fromJson);
    final messageContent = openAIResponse.choices.first.message.content;
    final jsonData = jsonDecode(messageContent) as Map<String, dynamic>;
    return mapJsonList(jsonData, Recipe.fromJson);
  }
}
