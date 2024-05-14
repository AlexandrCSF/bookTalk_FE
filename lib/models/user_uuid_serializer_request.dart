import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_uuid_serializer_request.freezed.dart';
part 'user_uuid_serializer_request.g.dart';

@freezed
abstract class UserUuidSerializerRequest with _$UserUuidSerializerRequest {

  const factory UserUuidSerializerRequest({
    required String uuid,
  }) = _UserUuidSerializerRequest;

  factory UserUuidSerializerRequest.fromJson(Map<String, dynamic> json) =>
      _$UserUuidSerializerRequestFromJson(json);

}
