// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pantry_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PantryState _$PantryStateFromJson(Map<String, dynamic> json) => _PantryState(
  pantryItems:
      (json['pantryItems'] as List<dynamic>?)
          ?.map((e) => PantryItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  detectedItems:
      (json['detectedItems'] as List<dynamic>?)
          ?.map((e) => PantryItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  extractionLoadingState:
      $enumDecodeNullable(
        _$PantryLoadingStateEnumMap,
        json['extractionLoadingState'],
      ) ??
      PantryLoadingState.init,
  isCategorizing: json['isCategorizing'] as bool? ?? false,
  errorMessage: json['errorMessage'] as String?,
);

Map<String, dynamic> _$PantryStateToJson(_PantryState instance) =>
    <String, dynamic>{
      'pantryItems': instance.pantryItems,
      'detectedItems': instance.detectedItems,
      'extractionLoadingState':
          _$PantryLoadingStateEnumMap[instance.extractionLoadingState]!,
      'isCategorizing': instance.isCategorizing,
      'errorMessage': instance.errorMessage,
    };

const _$PantryLoadingStateEnumMap = {
  PantryLoadingState.init: 'init',
  PantryLoadingState.loading: 'loading',
  PantryLoadingState.success: 'success',
  PantryLoadingState.failure: 'failure',
};
