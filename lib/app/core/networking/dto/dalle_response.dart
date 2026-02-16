import 'package:freezed_annotation/freezed_annotation.dart';

part 'dalle_response.freezed.dart';
part 'dalle_response.g.dart';

@freezed
abstract class DalleResponse with _$DalleResponse {
  const factory DalleResponse({
    required int created,
    required List<DalleImageData> data,
  }) = _DalleResponse;

  factory DalleResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DalleResponseFromJson(json);
}

@freezed
abstract class DalleImageData with _$DalleImageData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DalleImageData({
    required String url,
    String? revisedPrompt,
  }) = _DalleImageData;

  factory DalleImageData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DalleImageDataFromJson(json);
}
