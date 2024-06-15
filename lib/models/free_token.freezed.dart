// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreeToken _$FreeTokenFromJson(Map<String, dynamic> json) {
  return _FreeToken.fromJson(json);
}

/// @nodoc
mixin _$FreeToken {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeTokenCopyWith<FreeToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeTokenCopyWith<$Res> {
  factory $FreeTokenCopyWith(FreeToken value, $Res Function(FreeToken) then) =
      _$FreeTokenCopyWithImpl<$Res, FreeToken>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$FreeTokenCopyWithImpl<$Res, $Val extends FreeToken>
    implements $FreeTokenCopyWith<$Res> {
  _$FreeTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreeTokenImplCopyWith<$Res>
    implements $FreeTokenCopyWith<$Res> {
  factory _$$FreeTokenImplCopyWith(
          _$FreeTokenImpl value, $Res Function(_$FreeTokenImpl) then) =
      __$$FreeTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$FreeTokenImplCopyWithImpl<$Res>
    extends _$FreeTokenCopyWithImpl<$Res, _$FreeTokenImpl>
    implements _$$FreeTokenImplCopyWith<$Res> {
  __$$FreeTokenImplCopyWithImpl(
      _$FreeTokenImpl _value, $Res Function(_$FreeTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$FreeTokenImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeTokenImpl implements _FreeToken {
  const _$FreeTokenImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$FreeTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreeTokenImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'FreeToken(userId: $userId, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeTokenImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeTokenImplCopyWith<_$FreeTokenImpl> get copyWith =>
      __$$FreeTokenImplCopyWithImpl<_$FreeTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeTokenImplToJson(
      this,
    );
  }
}

abstract class _FreeToken implements FreeToken {
  const factory _FreeToken(
          {@JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$FreeTokenImpl;

  factory _FreeToken.fromJson(Map<String, dynamic> json) =
      _$FreeTokenImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$FreeTokenImplCopyWith<_$FreeTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
