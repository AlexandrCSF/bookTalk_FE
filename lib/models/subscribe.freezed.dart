// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscribe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Subscribe _$SubscribeFromJson(Map<String, dynamic> json) {
  return _Subscribe.fromJson(json);
}

/// @nodoc
mixin _$Subscribe {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'club_id')
  int get clubId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribeCopyWith<Subscribe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribeCopyWith<$Res> {
  factory $SubscribeCopyWith(Subscribe value, $Res Function(Subscribe) then) =
      _$SubscribeCopyWithImpl<$Res, Subscribe>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'club_id') int clubId});
}

/// @nodoc
class _$SubscribeCopyWithImpl<$Res, $Val extends Subscribe>
    implements $SubscribeCopyWith<$Res> {
  _$SubscribeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? clubId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscribeImplCopyWith<$Res>
    implements $SubscribeCopyWith<$Res> {
  factory _$$SubscribeImplCopyWith(
          _$SubscribeImpl value, $Res Function(_$SubscribeImpl) then) =
      __$$SubscribeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'club_id') int clubId});
}

/// @nodoc
class __$$SubscribeImplCopyWithImpl<$Res>
    extends _$SubscribeCopyWithImpl<$Res, _$SubscribeImpl>
    implements _$$SubscribeImplCopyWith<$Res> {
  __$$SubscribeImplCopyWithImpl(
      _$SubscribeImpl _value, $Res Function(_$SubscribeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? clubId = null,
  }) {
    return _then(_$SubscribeImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscribeImpl implements _Subscribe {
  const _$SubscribeImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'club_id') required this.clubId});

  factory _$SubscribeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscribeImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'club_id')
  final int clubId;

  @override
  String toString() {
    return 'Subscribe(userId: $userId, clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribeImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, clubId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscribeImplCopyWith<_$SubscribeImpl> get copyWith =>
      __$$SubscribeImplCopyWithImpl<_$SubscribeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscribeImplToJson(
      this,
    );
  }
}

abstract class _Subscribe implements Subscribe {
  const factory _Subscribe(
      {@JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'club_id') required final int clubId}) = _$SubscribeImpl;

  factory _Subscribe.fromJson(Map<String, dynamic> json) =
      _$SubscribeImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'club_id')
  int get clubId;
  @override
  @JsonKey(ignore: true)
  _$$SubscribeImplCopyWith<_$SubscribeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
