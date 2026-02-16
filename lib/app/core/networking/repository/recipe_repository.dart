import 'dart:convert';

import 'package:flutter_template/app/core/core.dart';
import 'package:flutter_template/app/core/networking/api/recipe_api.dart';
import 'package:flutter_template/app/core/networking/model/openai_api_response.dart';
import 'package:flutter_template/app/core/networking/model/recipe_suggestion_response.dart';
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

    // Parse OpenAI API response using DTO and mapJson
    final openAIResponse = mapJson(
      response.data,
      OpenAIApiResponse.fromJson,
    );

    // Extract the content from the first choice's message
    final messageContent = openAIResponse.choices.first.message.content;

    // Parse the JSON string inside the content (the recipe suggestions)
    final jsonData = jsonDecode(messageContent) as Map<String, dynamic>;

    // Convert to RecipeSuggestionResponse using DTO and mapJson
    final suggestionResponse = mapJson(
      jsonData,
      RecipeSuggestionResponse.fromJson,
    );

    return suggestionResponse.recipes;
  }
}
