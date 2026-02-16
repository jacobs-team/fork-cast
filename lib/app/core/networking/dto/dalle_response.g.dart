// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dalle_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DalleResponse _$DalleResponseFromJson(Map<String, dynamic> json) =>
    _DalleResponse(
      created: (json['created'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => DalleImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DalleResponseToJson(_DalleResponse instance) =>
    <String, dynamic>{'created': instance.created, 'data': instance.data};

_DalleImageData _$DalleImageDataFromJson(Map<String, dynamic> json) =>
    _DalleImageData(
      url: json['url'] as String,
      revisedPrompt: json['revised_prompt'] as String?,
    );

Map<String, dynamic> _$DalleImageDataToJson(_DalleImageData instance) =>
    <String, dynamic>{
      'url': instance.url,
      'revised_prompt': instance.revisedPrompt,
    };
