import 'package:freezed_annotation/freezed_annotation.dart';

part 'openai_api_response.freezed.dart';
part 'openai_api_response.g.dart';

/// OpenAI API response structure matching the exact API format.
@freezed
abstract class OpenAIApiResponse with _$OpenAIApiResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OpenAIApiResponse({
    required String id,
    required String object,
    required int created,
    required String model,
    required List<OpenAIChoice> choices,
    required OpenAIUsage usage,
    String? serviceTier,
    String? systemFingerprint,
  }) = _OpenAIApiResponse;

  factory OpenAIApiResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenAIApiResponseFromJson(json);
}

/// Choice in OpenAI API response.
@freezed
abstract class OpenAIChoice with _$OpenAIChoice {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OpenAIChoice({
    required int index,
    required OpenAIMessage message,
    String? finishReason,
    dynamic logprobs,
  }) = _OpenAIChoice;

  factory OpenAIChoice.fromJson(Map<String, dynamic> json) =>
      _$OpenAIChoiceFromJson(json);
}

/// Message in OpenAI API response.
@freezed
abstract class OpenAIMessage with _$OpenAIMessage {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OpenAIMessage({
    required String role,
    required String content,
    String? refusal,
    @Default([]) List<dynamic> annotations,
  }) = _OpenAIMessage;

  factory OpenAIMessage.fromJson(Map<String, dynamic> json) =>
      _$OpenAIMessageFromJson(json);
}

/// Usage information from OpenAI API.
@freezed
abstract class OpenAIUsage with _$OpenAIUsage {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OpenAIUsage({
    required int promptTokens,
    required int completionTokens,
    required int totalTokens,
    Map<String, dynamic>? promptTokensDetails,
    Map<String, dynamic>? completionTokensDetails,
  }) = _OpenAIUsage;

  factory OpenAIUsage.fromJson(Map<String, dynamic> json) =>
      _$OpenAIUsageFromJson(json);
}
