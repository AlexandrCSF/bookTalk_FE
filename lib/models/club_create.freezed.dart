// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClubCreate _$ClubCreateFromJson(Map<String, dynamic> json) {
  return _ClubCreate.fromJson(json);
}

/// @nodoc
mixin _$ClubCreate {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_id')
  int get adminId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias')
  String get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubCreateCopyWith<ClubCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubCreateCopyWith<$Res> {
  factory $ClubCreateCopyWith(
          ClubCreate value, $Res Function(ClubCreate) then) =
      _$ClubCreateCopyWithImpl<$Res, ClubCreate>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'admin_id') int adminId,
      @JsonKey(name: 'city_fias') String cityFias});
}

/// @nodoc
class _$ClubCreateCopyWithImpl<$Res, $Val extends ClubCreate>
    implements $ClubCreateCopyWith<$Res> {
  _$ClubCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? adminId = null,
    Object? cityFias = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int,
      cityFias: null == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClubCreateImplCopyWith<$Res>
    implements $ClubCreateCopyWith<$Res> {
  factory _$$ClubCreateImplCopyWith(
          _$ClubCreateImpl value, $Res Function(_$ClubCreateImpl) then) =
      __$$ClubCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'admin_id') int adminId,
      @JsonKey(name: 'city_fias') String cityFias});
}

/// @nodoc
class __$$ClubCreateImplCopyWithImpl<$Res>
    extends _$ClubCreateCopyWithImpl<$Res, _$ClubCreateImpl>
    implements _$$ClubCreateImplCopyWith<$Res> {
  __$$ClubCreateImplCopyWithImpl(
      _$ClubCreateImpl _value, $Res Function(_$ClubCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? adminId = null,
    Object? cityFias = null,
  }) {
    return _then(_$ClubCreateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int,
      cityFias: null == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClubCreateImpl implements _ClubCreate {
  const _$ClubCreateImpl(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: 'admin_id') required this.adminId,
      @JsonKey(name: 'city_fias') required this.cityFias});

  factory _$ClubCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClubCreateImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'admin_id')
  final int adminId;
  @override
  @JsonKey(name: 'city_fias')
  final String cityFias;

  @override
  String toString() {
    return 'ClubCreate(id: $id, name: $name, description: $description, adminId: $adminId, cityFias: $cityFias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubCreateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, adminId, cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubCreateImplCopyWith<_$ClubCreateImpl> get copyWith =>
      __$$ClubCreateImplCopyWithImpl<_$ClubCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClubCreateImplToJson(
      this,
    );
  }
}

abstract class _ClubCreate implements ClubCreate {
  const factory _ClubCreate(
          {required final int id,
          required final String name,
          required final String description,
          @JsonKey(name: 'admin_id') required final int adminId,
          @JsonKey(name: 'city_fias') required final String cityFias}) =
      _$ClubCreateImpl;

  factory _ClubCreate.fromJson(Map<String, dynamic> json) =
      _$ClubCreateImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'admin_id')
  int get adminId;
  @override
  @JsonKey(name: 'city_fias')
  String get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$ClubCreateImplCopyWith<_$ClubCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
