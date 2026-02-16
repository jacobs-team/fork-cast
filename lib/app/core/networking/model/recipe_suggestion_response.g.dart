// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_suggestion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeSuggestionResponse _$RecipeSuggestionResponseFromJson(
  Map<String, dynamic> json,
) => _RecipeSuggestionResponse(
  recipes: (json['recipes'] as List<dynamic>)
      .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RecipeSuggestionResponseToJson(
  _RecipeSuggestionResponse instance,
) => <String, dynamic>{'recipes': instance.recipes};
