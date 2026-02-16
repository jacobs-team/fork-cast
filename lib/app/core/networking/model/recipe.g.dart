// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeIngredient _$RecipeIngredientFromJson(Map<String, dynamic> json) =>
    _RecipeIngredient(
      name: json['name'] as String,
      amount: json['amount'] as String,
      isMainIngredient: json['isMainIngredient'] as bool? ?? false,
    );

Map<String, dynamic> _$RecipeIngredientToJson(_RecipeIngredient instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'isMainIngredient': instance.isMainIngredient,
    };

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
  id: json['id'] as String,
  name: json['name'] as String,
  cuisine: json['cuisine'] as String,
  mainIngredients: (json['mainIngredients'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  ingredients: (json['ingredients'] as List<dynamic>)
      .map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
      .toList(),
  description: json['description'] as String,
  prepTime: json['prepTime'] as String,
  difficulty: json['difficulty'] as String,
  instructions: (json['instructions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  servings: (json['servings'] as num).toInt(),
  imageUrl: json['imageUrl'] as String?,
  isFavorite: json['isFavorite'] as bool? ?? false,
);

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'cuisine': instance.cuisine,
  'mainIngredients': instance.mainIngredients,
  'ingredients': instance.ingredients,
  'description': instance.description,
  'prepTime': instance.prepTime,
  'difficulty': instance.difficulty,
  'instructions': instance.instructions,
  'servings': instance.servings,
  'imageUrl': instance.imageUrl,
  'isFavorite': instance.isFavorite,
};
