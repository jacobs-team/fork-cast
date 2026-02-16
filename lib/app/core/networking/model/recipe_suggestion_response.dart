import 'package:flutter_template/app/core/networking/model/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_suggestion_response.freezed.dart';
part 'recipe_suggestion_response.g.dart';

@freezed
abstract class RecipeSuggestionResponse with _$RecipeSuggestionResponse {
  const factory RecipeSuggestionResponse({
    required List<Recipe> recipes,
  }) = _RecipeSuggestionResponse;

  factory RecipeSuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeSuggestionResponseFromJson(json);
}
