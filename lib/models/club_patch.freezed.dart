// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_patch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClubPatch _$ClubPatchFromJson(Map<String, dynamic> json) {
  return _ClubPatch.fromJson(json);
}

/// @nodoc
mixin _$ClubPatch {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias')
  String get cityFias => throw _privateConstructorUsedError;
  int get admin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubPatchCopyWith<ClubPatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubPatchCopyWith<$Res> {
  factory $ClubPatchCopyWith(ClubPatch value, $Res Function(ClubPatch) then) =
      _$ClubPatchCopyWithImpl<$Res, ClubPatch>;
  @useResult
  $Res call(
      {String name,
      String description,
      @JsonKey(name: 'city_fias') String cityFias,
      int admin});
}

/// @nodoc
class _$ClubPatchCopyWithImpl<$Res, $Val extends ClubPatch>
    implements $ClubPatchCopyWith<$Res> {
  _$ClubPatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? cityFias = null,
    Object? admin = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cityFias: null == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClubPatchImplCopyWith<$Res>
    implements $ClubPatchCopyWith<$Res> {
  factory _$$ClubPatchImplCopyWith(
          _$ClubPatchImpl value, $Res Function(_$ClubPatchImpl) then) =
      __$$ClubPatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      @JsonKey(name: 'city_fias') String cityFias,
      int admin});
}

/// @nodoc
class __$$ClubPatchImplCopyWithImpl<$Res>
    extends _$ClubPatchCopyWithImpl<$Res, _$ClubPatchImpl>
    implements _$$ClubPatchImplCopyWith<$Res> {
  __$$ClubPatchImplCopyWithImpl(
      _$ClubPatchImpl _value, $Res Function(_$ClubPatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? cityFias = null,
    Object? admin = null,
  }) {
    return _then(_$ClubPatchImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cityFias: null == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClubPatchImpl implements _ClubPatch {
  const _$ClubPatchImpl(
      {required this.name,
      required this.description,
      @JsonKey(name: 'city_fias') required this.cityFias,
      required this.admin});

  factory _$ClubPatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClubPatchImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'city_fias')
  final String cityFias;
  @override
  final int admin;

  @override
  String toString() {
    return 'ClubPatch(name: $name, description: $description, cityFias: $cityFias, admin: $admin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubPatchImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias) &&
            (identical(other.admin, admin) || other.admin == admin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, cityFias, admin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubPatchImplCopyWith<_$ClubPatchImpl> get copyWith =>
      __$$ClubPatchImplCopyWithImpl<_$ClubPatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClubPatchImplToJson(
      this,
    );
  }
}

abstract class _ClubPatch implements ClubPatch {
  const factory _ClubPatch(
      {required final String name,
      required final String description,
      @JsonKey(name: 'city_fias') required final String cityFias,
      required final int admin}) = _$ClubPatchImpl;

  factory _ClubPatch.fromJson(Map<String, dynamic> json) =
      _$ClubPatchImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'city_fias')
  String get cityFias;
  @override
  int get admin;
  @override
  @JsonKey(ignore: true)
  _$$ClubPatchImplCopyWith<_$ClubPatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
