// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pantry_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PantryItem _$PantryItemFromJson(Map<String, dynamic> json) => _PantryItem(
  name: json['name'] as String,
  category:
      $enumDecodeNullable(_$PantryCategoryEnumMap, json['category']) ??
      PantryCategory.other,
);

Map<String, dynamic> _$PantryItemToJson(_PantryItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': _$PantryCategoryEnumMap[instance.category]!,
    };

const _$PantryCategoryEnumMap = {
  PantryCategory.produce: 'produce',
  PantryCategory.dairy: 'dairy',
  PantryCategory.meatAndSeafood: 'meatAndSeafood',
  PantryCategory.pantryStaples: 'pantryStaples',
  PantryCategory.frozen: 'frozen',
  PantryCategory.beverages: 'beverages',
  PantryCategory.condimentsAndSauces: 'condimentsAndSauces',
  PantryCategory.baking: 'baking',
  PantryCategory.snacks: 'snacks',
  PantryCategory.other: 'other',
};
