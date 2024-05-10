// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Meeting _$MeetingFromJson(Map<String, dynamic> json) {
  return _Meeting.fromJson(json);
}

/// @nodoc
mixin _$Meeting {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get club => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingCopyWith<Meeting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingCopyWith<$Res> {
  factory $MeetingCopyWith(Meeting value, $Res Function(Meeting) then) =
      _$MeetingCopyWithImpl<$Res, Meeting>;
  @useResult
  $Res call(
      {int id,
      String name,
      String date,
      String time,
      String location,
      int club});
}

/// @nodoc
class _$MeetingCopyWithImpl<$Res, $Val extends Meeting>
    implements $MeetingCopyWith<$Res> {
  _$MeetingCopyWithImpl(this._value, this._then);

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
    Object? club = null,
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
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingImplCopyWith<$Res> implements $MeetingCopyWith<$Res> {
  factory _$$MeetingImplCopyWith(
          _$MeetingImpl value, $Res Function(_$MeetingImpl) then) =
      __$$MeetingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String date,
      String time,
      String location,
      int club});
}

/// @nodoc
class __$$MeetingImplCopyWithImpl<$Res>
    extends _$MeetingCopyWithImpl<$Res, _$MeetingImpl>
    implements _$$MeetingImplCopyWith<$Res> {
  __$$MeetingImplCopyWithImpl(
      _$MeetingImpl _value, $Res Function(_$MeetingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? time = null,
    Object? location = null,
    Object? club = null,
  }) {
    return _then(_$MeetingImpl(
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
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingImpl implements _Meeting {
  const _$MeetingImpl(
      {required this.id,
      required this.name,
      required this.date,
      required this.time,
      required this.location,
      required this.club});

  factory _$MeetingImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingImplFromJson(json);

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
  final int club;

  @override
  String toString() {
    return 'Meeting(id: $id, name: $name, date: $date, time: $time, location: $location, club: $club)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.club, club) || other.club == club));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, date, time, location, club);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingImplCopyWith<_$MeetingImpl> get copyWith =>
      __$$MeetingImplCopyWithImpl<_$MeetingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingImplToJson(
      this,
    );
  }
}

abstract class _Meeting implements Meeting {
  const factory _Meeting(
      {required final int id,
      required final String name,
      required final String date,
      required final String time,
      required final String location,
      required final int club}) = _$MeetingImpl;

  factory _Meeting.fromJson(Map<String, dynamic> json) = _$MeetingImpl.fromJson;

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
  int get club;
  @override
  @JsonKey(ignore: true)
  _$$MeetingImplCopyWith<_$MeetingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
