// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingCreate _$MeetingCreateFromJson(Map<String, dynamic> json) {
  return _MeetingCreate.fromJson(json);
}

/// @nodoc
mixin _$MeetingCreate {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingCreateCopyWith<MeetingCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingCreateCopyWith<$Res> {
  factory $MeetingCreateCopyWith(
          MeetingCreate value, $Res Function(MeetingCreate) then) =
      _$MeetingCreateCopyWithImpl<$Res, MeetingCreate>;
  @useResult
  $Res call({int id, String name, String date, String time, String location});
}

/// @nodoc
class _$MeetingCreateCopyWithImpl<$Res, $Val extends MeetingCreate>
    implements $MeetingCreateCopyWith<$Res> {
  _$MeetingCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? time = null,
    Object? location = null,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingCreateImplCopyWith<$Res>
    implements $MeetingCreateCopyWith<$Res> {
  factory _$$MeetingCreateImplCopyWith(
          _$MeetingCreateImpl value, $Res Function(_$MeetingCreateImpl) then) =
      __$$MeetingCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String date, String time, String location});
}

/// @nodoc
class __$$MeetingCreateImplCopyWithImpl<$Res>
    extends _$MeetingCreateCopyWithImpl<$Res, _$MeetingCreateImpl>
    implements _$$MeetingCreateImplCopyWith<$Res> {
  __$$MeetingCreateImplCopyWithImpl(
      _$MeetingCreateImpl _value, $Res Function(_$MeetingCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? time = null,
    Object? location = null,
  }) {
    return _then(_$MeetingCreateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingCreateImpl implements _MeetingCreate {
  const _$MeetingCreateImpl(
      {required this.id,
      required this.name,
      required this.date,
      required this.time,
      required this.location});

  factory _$MeetingCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingCreateImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String date;
  @override
  final String time;
  @override
  final String location;

  @override
  String toString() {
    return 'MeetingCreate(id: $id, name: $name, date: $date, time: $time, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingCreateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, date, time, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingCreateImplCopyWith<_$MeetingCreateImpl> get copyWith =>
      __$$MeetingCreateImplCopyWithImpl<_$MeetingCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingCreateImplToJson(
      this,
    );
  }
}

abstract class _MeetingCreate implements MeetingCreate {
  const factory _MeetingCreate(
      {required final int id,
      required final String name,
      required final String date,
      required final String time,
      required final String location}) = _$MeetingCreateImpl;

  factory _MeetingCreate.fromJson(Map<String, dynamic> json) =
      _$MeetingCreateImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get date;
  @override
  String get time;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$MeetingCreateImplCopyWith<_$MeetingCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
