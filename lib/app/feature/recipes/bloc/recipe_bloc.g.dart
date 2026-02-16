// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeState _$RecipeStateFromJson(Map<String, dynamic> json) => _RecipeState(
  selectedCuisines:
      (json['selectedCuisines'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  selectedIngredients:
      (json['selectedIngredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  selectedRecipeTypes:
      (json['selectedRecipeTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  customCuisines:
      (json['customCuisines'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  customIngredients:
      (json['customIngredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  customRecipeTypes:
      (json['customRecipeTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  recipeSessions:
      (json['recipeSessions'] as List<dynamic>?)
          ?.map((e) => RecipeSession.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  favoriteRecipes:
      (json['favoriteRecipes'] as List<dynamic>?)
          ?.map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  strictIngredients: json['strictIngredients'] as bool? ?? false,
  recipeImagePaths:
      (json['recipeImagePaths'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ) ??
      const {},
  recipeImageLoadingStates:
      (json['recipeImageLoadingStates'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, $enumDecode(_$ImageLoadingStateEnumMap, e)),
      ) ??
      const {},
  suggestionsLoadingState:
      $enumDecodeNullable(
        _$RecipeLoadingStateEnumMap,
        json['suggestionsLoadingState'],
      ) ??
      RecipeLoadingState.init,
  suggestionsErrorMessage: json['suggestionsErrorMessage'] as String?,
);

Map<String, dynamic> _$RecipeStateToJson(_RecipeState instance) =>
    <String, dynamic>{
      'selectedCuisines': instance.selectedCuisines,
      'selectedIngredients': instance.selectedIngredients,
      'selectedRecipeTypes': instance.selectedRecipeTypes,
      'customCuisines': instance.customCuisines,
      'customIngredients': instance.customIngredients,
      'customRecipeTypes': instance.customRecipeTypes,
      'recipeSessions': instance.recipeSessions,
      'favoriteRecipes': instance.favoriteRecipes,
      'strictIngredients': instance.strictIngredients,
      'recipeImagePaths': instance.recipeImagePaths,
      'recipeImageLoadingStates': instance.recipeImageLoadingStates.map(
        (k, e) => MapEntry(k, _$ImageLoadingStateEnumMap[e]!),
      ),
      'suggestionsLoadingState':
          _$RecipeLoadingStateEnumMap[instance.suggestionsLoadingState]!,
      'suggestionsErrorMessage': instance.suggestionsErrorMessage,
    };

const _$ImageLoadingStateEnumMap = {
  ImageLoadingState.loading: 'loading',
  ImageLoadingState.success: 'success',
  ImageLoadingState.failure: 'failure',
};

const _$RecipeLoadingStateEnumMap = {
  RecipeLoadingState.init: 'init',
  RecipeLoadingState.loading: 'loading',
  RecipeLoadingState.success: 'success',
  RecipeLoadingState.failure: 'failure',
};
