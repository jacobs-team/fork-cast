// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openai_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenAIApiResponse _$OpenAIApiResponseFromJson(Map<String, dynamic> json) =>
    _OpenAIApiResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => OpenAIChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: OpenAIUsage.fromJson(json['usage'] as Map<String, dynamic>),
      serviceTier: json['service_tier'] as String?,
      systemFingerprint: json['system_fingerprint'] as String?,
    );

Map<String, dynamic> _$OpenAIApiResponseToJson(_OpenAIApiResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
      'service_tier': instance.serviceTier,
      'system_fingerprint': instance.systemFingerprint,
    };

_OpenAIChoice _$OpenAIChoiceFromJson(Map<String, dynamic> json) =>
    _OpenAIChoice(
      index: (json['index'] as num).toInt(),
      message: OpenAIMessage.fromJson(json['message'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String?,
      logprobs: json['logprobs'],
    );

Map<String, dynamic> _$OpenAIChoiceToJson(_OpenAIChoice instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': instance.finishReason,
      'logprobs': instance.logprobs,
    };

_OpenAIMessage _$OpenAIMessageFromJson(Map<String, dynamic> json) =>
    _OpenAIMessage(
      role: json['role'] as String,
      content: json['content'] as String,
      refusal: json['refusal'] as String?,
      annotations: json['annotations'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$OpenAIMessageToJson(_OpenAIMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
      'refusal': instance.refusal,
      'annotations': instance.annotations,
    };

_OpenAIUsage _$OpenAIUsageFromJson(Map<String, dynamic> json) => _OpenAIUsage(
  promptTokens: (json['prompt_tokens'] as num).toInt(),
  completionTokens: (json['completion_tokens'] as num).toInt(),
  totalTokens: (json['total_tokens'] as num).toInt(),
  promptTokensDetails: json['prompt_tokens_details'] as Map<String, dynamic>?,
  completionTokensDetails:
      json['completion_tokens_details'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$OpenAIUsageToJson(_OpenAIUsage instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
      'prompt_tokens_details': instance.promptTokensDetails,
      'completion_tokens_details': instance.completionTokensDetails,
    };
