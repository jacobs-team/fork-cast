// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'claude_api_response.freezed.dart';
// part 'claude_api_response.g.dart';

// /// Claude API response structure matching the exact API format.
// @freezed
// abstract class ClaudeApiResponse with _$ClaudeApiResponse {
//   const factory ClaudeApiResponse({
//     required String id,
//     required String type,
//     required String role,
//     required List<ClaudeContent> content,
//     required String model,
//     @JsonKey(name: 'stop_reason') String? stopReason,
//     @JsonKey(name: 'stop_sequence') String? stopSequence,
//     required ClaudeUsage usage,
//   }) = _ClaudeApiResponse;

//   factory ClaudeApiResponse.fromJson(Map<String, dynamic> json) =>
//       _$ClaudeApiResponseFromJson(json);
// }

// /// Content block in Claude API response.
// @freezed
// abstract class ClaudeContent with _$ClaudeContent {
//   const factory ClaudeContent({
//     required String type,
//     required String text,
//   }) = _ClaudeContent;

//   factory ClaudeContent.fromJson(Map<String, dynamic> json) =>
//       _$ClaudeContentFromJson(json);
// }

// /// Usage information from Claude API.
// @freezed
// abstract class ClaudeUsage with _$ClaudeUsage {
//   const factory ClaudeUsage({
//     @JsonKey(name: 'input_tokens') required int inputTokens,
//     @JsonKey(name: 'output_tokens') required int outputTokens,
//   }) = _ClaudeUsage;

//   factory ClaudeUsage.fromJson(Map<String, dynamic> json) =>
//       _$ClaudeUsageFromJson(json);
// }
