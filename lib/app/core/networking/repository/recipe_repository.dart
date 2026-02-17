import 'dart:convert';

import 'package:fork_cast/app/core/core.dart';
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
    required List<String> recipeTypes,
    required bool strictIngredients,
  }) async {
    final response = await _recipeApi.getRecipeSuggestions(
      cuisines: cuisines,
      ingredients: ingredients,
      recipeTypes: recipeTypes,
      strictIngredients: strictIngredients,
    );

    final openAIResponse = mapJson(response.data, OpenAIApiResponse.fromJson);
    final messageContent = openAIResponse.choices.first.message.content;
    final jsonData = jsonDecode(messageContent) as Map<String, dynamic>;
    return mapJsonList(jsonData['recipes'], Recipe.fromJson);
  }

  /// Generates an image for a recipe via DALL-E.
  ///
  /// Returns the network URL of the generated image.
  Future<String> generateRecipeImage({
    required String recipeName,
    required String cuisine,
    required List<String> mainIngredients,
    required List<String> instructions,
  }) async {
    final response = await _recipeApi.generateRecipeImage(
      recipeName: recipeName,
      cuisine: cuisine,
      mainIngredients: mainIngredients,
      instructions: instructions,
    );

    final dalleResponse = mapJson(
      response.data,
      DalleResponse.fromJson,
    );
    return dalleResponse.data.first.url;
  }

}
