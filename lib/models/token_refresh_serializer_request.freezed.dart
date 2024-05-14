// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_refresh_serializer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenRefreshSerializerRequest _$TokenRefreshSerializerRequestFromJson(
    Map<String, dynamic> json) {
  return _TokenRefreshSerializerRequest.fromJson(json);
}

/// @nodoc
mixin _$TokenRefreshSerializerRequest {
  String get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenRefreshSerializerRequestCopyWith<TokenRefreshSerializerRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenRefreshSerializerRequestCopyWith<$Res> {
  factory $TokenRefreshSerializerRequestCopyWith(
          TokenRefreshSerializerRequest value,
          $Res Function(TokenRefreshSerializerRequest) then) =
      _$TokenRefreshSerializerRequestCopyWithImpl<$Res,
          TokenRefreshSerializerRequest>;
  @useResult
  $Res call({String refresh});
}

/// @nodoc
class _$TokenRefreshSerializerRequestCopyWithImpl<$Res,
        $Val extends TokenRefreshSerializerRequest>
    implements $TokenRefreshSerializerRequestCopyWith<$Res> {
  _$TokenRefreshSerializerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenRefreshSerializerRequestImplCopyWith<$Res>
    implements $TokenRefreshSerializerRequestCopyWith<$Res> {
  factory _$$TokenRefreshSerializerRequestImplCopyWith(
          _$TokenRefreshSerializerRequestImpl value,
          $Res Function(_$TokenRefreshSerializerRequestImpl) then) =
      __$$TokenRefreshSerializerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refresh});
}

/// @nodoc
class __$$TokenRefreshSerializerRequestImplCopyWithImpl<$Res>
    extends _$TokenRefreshSerializerRequestCopyWithImpl<$Res,
        _$TokenRefreshSerializerRequestImpl>
    implements _$$TokenRefreshSerializerRequestImplCopyWith<$Res> {
  __$$TokenRefreshSerializerRequestImplCopyWithImpl(
      _$TokenRefreshSerializerRequestImpl _value,
      $Res Function(_$TokenRefreshSerializerRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
  }) {
    return _then(_$TokenRefreshSerializerRequestImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenRefreshSerializerRequestImpl
    implements _TokenRefreshSerializerRequest {
  const _$TokenRefreshSerializerRequestImpl({required this.refresh});

  factory _$TokenRefreshSerializerRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TokenRefreshSerializerRequestImplFromJson(json);

  @override
  final String refresh;

  @override
  String toString() {
    return 'TokenRefreshSerializerRequest(refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenRefreshSerializerRequestImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenRefreshSerializerRequestImplCopyWith<
          _$TokenRefreshSerializerRequestImpl>
      get copyWith => __$$TokenRefreshSerializerRequestImplCopyWithImpl<
          _$TokenRefreshSerializerRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenRefreshSerializerRequestImplToJson(
      this,
    );
  }
}

abstract class _TokenRefreshSerializerRequest
    implements TokenRefreshSerializerRequest {
  const factory _TokenRefreshSerializerRequest(
      {required final String refresh}) = _$TokenRefreshSerializerRequestImpl;

  factory _TokenRefreshSerializerRequest.fromJson(Map<String, dynamic> json) =
      _$TokenRefreshSerializerRequestImpl.fromJson;

  @override
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$TokenRefreshSerializerRequestImplCopyWith<
          _$TokenRefreshSerializerRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
