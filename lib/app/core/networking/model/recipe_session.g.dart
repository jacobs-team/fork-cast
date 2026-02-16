// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeSession _$RecipeSessionFromJson(Map<String, dynamic> json) =>
    _RecipeSession(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      cuisines: (json['cuisines'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      strictIngredients: json['strictIngredients'] as bool,
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeSessionToJson(_RecipeSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'cuisines': instance.cuisines,
      'ingredients': instance.ingredients,
      'strictIngredients': instance.strictIngredients,
      'recipes': instance.recipes,
    };
