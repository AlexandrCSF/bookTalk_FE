// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_uuid_serializer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserUuidSerializerRequest _$UserUuidSerializerRequestFromJson(
    Map<String, dynamic> json) {
  return _UserUuidSerializerRequest.fromJson(json);
}

/// @nodoc
mixin _$UserUuidSerializerRequest {
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserUuidSerializerRequestCopyWith<UserUuidSerializerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUuidSerializerRequestCopyWith<$Res> {
  factory $UserUuidSerializerRequestCopyWith(UserUuidSerializerRequest value,
          $Res Function(UserUuidSerializerRequest) then) =
      _$UserUuidSerializerRequestCopyWithImpl<$Res, UserUuidSerializerRequest>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class _$UserUuidSerializerRequestCopyWithImpl<$Res,
        $Val extends UserUuidSerializerRequest>
    implements $UserUuidSerializerRequestCopyWith<$Res> {
  _$UserUuidSerializerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUuidSerializerRequestImplCopyWith<$Res>
    implements $UserUuidSerializerRequestCopyWith<$Res> {
  factory _$$UserUuidSerializerRequestImplCopyWith(
          _$UserUuidSerializerRequestImpl value,
          $Res Function(_$UserUuidSerializerRequestImpl) then) =
      __$$UserUuidSerializerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$UserUuidSerializerRequestImplCopyWithImpl<$Res>
    extends _$UserUuidSerializerRequestCopyWithImpl<$Res,
        _$UserUuidSerializerRequestImpl>
    implements _$$UserUuidSerializerRequestImplCopyWith<$Res> {
  __$$UserUuidSerializerRequestImplCopyWithImpl(
      _$UserUuidSerializerRequestImpl _value,
      $Res Function(_$UserUuidSerializerRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$UserUuidSerializerRequestImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUuidSerializerRequestImpl implements _UserUuidSerializerRequest {
  const _$UserUuidSerializerRequestImpl({required this.uuid});

  factory _$UserUuidSerializerRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUuidSerializerRequestImplFromJson(json);

  @override
  final String uuid;

  @override
  String toString() {
    return 'UserUuidSerializerRequest(uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUuidSerializerRequestImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUuidSerializerRequestImplCopyWith<_$UserUuidSerializerRequestImpl>
      get copyWith => __$$UserUuidSerializerRequestImplCopyWithImpl<
          _$UserUuidSerializerRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUuidSerializerRequestImplToJson(
      this,
    );
  }
}

abstract class _UserUuidSerializerRequest implements UserUuidSerializerRequest {
  const factory _UserUuidSerializerRequest({required final String uuid}) =
      _$UserUuidSerializerRequestImpl;

  factory _UserUuidSerializerRequest.fromJson(Map<String, dynamic> json) =
      _$UserUuidSerializerRequestImpl.fromJson;

  @override
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$UserUuidSerializerRequestImplCopyWith<_$UserUuidSerializerRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
