// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_patch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPatch _$UserPatchFromJson(Map<String, dynamic> json) {
  return _UserPatch.fromJson(json);
}

/// @nodoc
mixin _$UserPatch {
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  List<String> get interests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPatchCopyWith<UserPatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPatchCopyWith<$Res> {
  factory $UserPatchCopyWith(UserPatch value, $Res Function(UserPatch) then) =
      _$UserPatchCopyWithImpl<$Res, UserPatch>;
  @useResult
  $Res call(
      {String username,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String email,
      String city,
      List<String> interests});
}

/// @nodoc
class _$UserPatchCopyWithImpl<$Res, $Val extends UserPatch>
    implements $UserPatchCopyWith<$Res> {
  _$UserPatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? city = null,
    Object? interests = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPatchImplCopyWith<$Res>
    implements $UserPatchCopyWith<$Res> {
  factory _$$UserPatchImplCopyWith(
          _$UserPatchImpl value, $Res Function(_$UserPatchImpl) then) =
      __$$UserPatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String email,
      String city,
      List<String> interests});
}

/// @nodoc
class __$$UserPatchImplCopyWithImpl<$Res>
    extends _$UserPatchCopyWithImpl<$Res, _$UserPatchImpl>
    implements _$$UserPatchImplCopyWith<$Res> {
  __$$UserPatchImplCopyWithImpl(
      _$UserPatchImpl _value, $Res Function(_$UserPatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? city = null,
    Object? interests = null,
  }) {
    return _then(_$UserPatchImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPatchImpl implements _UserPatch {
  const _$UserPatchImpl(
      {required this.username,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.email,
      required this.city,
      required final List<String> interests})
      : _interests = interests;

  factory _$UserPatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPatchImplFromJson(json);

  @override
  final String username;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String email;
  @override
  final String city;
  final List<String> _interests;
  @override
  List<String> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  @override
  String toString() {
    return 'UserPatch(username: $username, firstName: $firstName, lastName: $lastName, email: $email, city: $city, interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPatchImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, firstName, lastName,
      email, city, const DeepCollectionEquality().hash(_interests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPatchImplCopyWith<_$UserPatchImpl> get copyWith =>
      __$$UserPatchImplCopyWithImpl<_$UserPatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPatchImplToJson(
      this,
    );
  }
}

abstract class _UserPatch implements UserPatch {
  const factory _UserPatch(
      {required final String username,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      required final String email,
      required final String city,
      required final List<String> interests}) = _$UserPatchImpl;

  factory _UserPatch.fromJson(Map<String, dynamic> json) =
      _$UserPatchImpl.fromJson;

  @override
  String get username;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get email;
  @override
  String get city;
  @override
  List<String> get interests;
  @override
  @JsonKey(ignore: true)
  _$$UserPatchImplCopyWith<_$UserPatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
