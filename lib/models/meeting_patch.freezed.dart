// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_patch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingPatch _$MeetingPatchFromJson(Map<String, dynamic> json) {
  return _MeetingPatch.fromJson(json);
}

/// @nodoc
mixin _$MeetingPatch {
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingPatchCopyWith<MeetingPatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingPatchCopyWith<$Res> {
  factory $MeetingPatchCopyWith(
          MeetingPatch value, $Res Function(MeetingPatch) then) =
      _$MeetingPatchCopyWithImpl<$Res, MeetingPatch>;
  @useResult
  $Res call({String name, String date, String time, String location});
}

/// @nodoc
class _$MeetingPatchCopyWithImpl<$Res, $Val extends MeetingPatch>
    implements $MeetingPatchCopyWith<$Res> {
  _$MeetingPatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? time = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$MeetingPatchImplCopyWith<$Res>
    implements $MeetingPatchCopyWith<$Res> {
  factory _$$MeetingPatchImplCopyWith(
          _$MeetingPatchImpl value, $Res Function(_$MeetingPatchImpl) then) =
      __$$MeetingPatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String date, String time, String location});
}

/// @nodoc
class __$$MeetingPatchImplCopyWithImpl<$Res>
    extends _$MeetingPatchCopyWithImpl<$Res, _$MeetingPatchImpl>
    implements _$$MeetingPatchImplCopyWith<$Res> {
  __$$MeetingPatchImplCopyWithImpl(
      _$MeetingPatchImpl _value, $Res Function(_$MeetingPatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? time = null,
    Object? location = null,
  }) {
    return _then(_$MeetingPatchImpl(
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
class _$MeetingPatchImpl implements _MeetingPatch {
  const _$MeetingPatchImpl(
      {required this.name,
      required this.date,
      required this.time,
      required this.location});

  factory _$MeetingPatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingPatchImplFromJson(json);

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
    return 'MeetingPatch(name: $name, date: $date, time: $time, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingPatchImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, date, time, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingPatchImplCopyWith<_$MeetingPatchImpl> get copyWith =>
      __$$MeetingPatchImplCopyWithImpl<_$MeetingPatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingPatchImplToJson(
      this,
    );
  }
}

abstract class _MeetingPatch implements MeetingPatch {
  const factory _MeetingPatch(
      {required final String name,
      required final String date,
      required final String time,
      required final String location}) = _$MeetingPatchImpl;

  factory _MeetingPatch.fromJson(Map<String, dynamic> json) =
      _$MeetingPatchImpl.fromJson;

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
  _$$MeetingPatchImplCopyWith<_$MeetingPatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
