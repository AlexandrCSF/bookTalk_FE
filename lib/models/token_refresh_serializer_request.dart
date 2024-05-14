import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_refresh_serializer_request.freezed.dart';
part 'token_refresh_serializer_request.g.dart';

@freezed
abstract class TokenRefreshSerializerRequest with _$TokenRefreshSerializerRequest {

  const factory TokenRefreshSerializerRequest({
    required String refresh,
  }) = _TokenRefreshSerializerRequest;

  factory TokenRefreshSerializerRequest.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshSerializerRequestFromJson(json);

}
