// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_meeting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClubMeeting _$ClubMeetingFromJson(Map<String, dynamic> json) {
  return _ClubMeeting.fromJson(json);
}

/// @nodoc
mixin _$ClubMeeting {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get club => throw _privateConstructorUsedError;
  bool get isSubscribed => throw _privateConstructorUsedError;
  bool get isAdministrator => throw _privateConstructorUsedError;
  int get numOfAttender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubMeetingCopyWith<ClubMeeting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubMeetingCopyWith<$Res> {
  factory $ClubMeetingCopyWith(
          ClubMeeting value, $Res Function(ClubMeeting) then) =
      _$ClubMeetingCopyWithImpl<$Res, ClubMeeting>;
  @useResult
  $Res call(
      {int id,
      String name,
      String date,
      String time,
      String location,
      int club,
      bool isSubscribed,
      bool isAdministrator,
      int numOfAttender});
}

/// @nodoc
class _$ClubMeetingCopyWithImpl<$Res, $Val extends ClubMeeting>
    implements $ClubMeetingCopyWith<$Res> {
  _$ClubMeetingCopyWithImpl(this._value, this._then);

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
    Object? isSubscribed = null,
    Object? isAdministrator = null,
    Object? numOfAttender = null,
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
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdministrator: null == isAdministrator
          ? _value.isAdministrator
          : isAdministrator // ignore: cast_nullable_to_non_nullable
              as bool,
      numOfAttender: null == numOfAttender
          ? _value.numOfAttender
          : numOfAttender // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClubMeetingImplCopyWith<$Res>
    implements $ClubMeetingCopyWith<$Res> {
  factory _$$ClubMeetingImplCopyWith(
          _$ClubMeetingImpl value, $Res Function(_$ClubMeetingImpl) then) =
      __$$ClubMeetingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String date,
      String time,
      String location,
      int club,
      bool isSubscribed,
      bool isAdministrator,
      int numOfAttender});
}

/// @nodoc
class __$$ClubMeetingImplCopyWithImpl<$Res>
    extends _$ClubMeetingCopyWithImpl<$Res, _$ClubMeetingImpl>
    implements _$$ClubMeetingImplCopyWith<$Res> {
  __$$ClubMeetingImplCopyWithImpl(
      _$ClubMeetingImpl _value, $Res Function(_$ClubMeetingImpl) _then)
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
    Object? isSubscribed = null,
    Object? isAdministrator = null,
    Object? numOfAttender = null,
  }) {
    return _then(_$ClubMeetingImpl(
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
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdministrator: null == isAdministrator
          ? _value.isAdministrator
          : isAdministrator // ignore: cast_nullable_to_non_nullable
              as bool,
      numOfAttender: null == numOfAttender
          ? _value.numOfAttender
          : numOfAttender // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClubMeetingImpl implements _ClubMeeting {
  const _$ClubMeetingImpl(
      {required this.id,
      required this.name,
      required this.date,
      required this.time,
      required this.location,
      required this.club,
      required this.isSubscribed,
      required this.isAdministrator,
      required this.numOfAttender});

  factory _$ClubMeetingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClubMeetingImplFromJson(json);

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
  final bool isSubscribed;
  @override
  final bool isAdministrator;
  @override
  final int numOfAttender;

  @override
  String toString() {
    return 'ClubMeeting(id: $id, name: $name, date: $date, time: $time, location: $location, club: $club, isSubscribed: $isSubscribed, isAdministrator: $isAdministrator, numOfAttender: $numOfAttender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubMeetingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.club, club) || other.club == club) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.isAdministrator, isAdministrator) ||
                other.isAdministrator == isAdministrator) &&
            (identical(other.numOfAttender, numOfAttender) ||
                other.numOfAttender == numOfAttender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, date, time, location,
      club, isSubscribed, isAdministrator, numOfAttender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubMeetingImplCopyWith<_$ClubMeetingImpl> get copyWith =>
      __$$ClubMeetingImplCopyWithImpl<_$ClubMeetingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClubMeetingImplToJson(
      this,
    );
  }
}

abstract class _ClubMeeting implements ClubMeeting {
  const factory _ClubMeeting(
      {required final int id,
      required final String name,
      required final String date,
      required final String time,
      required final String location,
      required final int club,
      required final bool isSubscribed,
      required final bool isAdministrator,
      required final int numOfAttender}) = _$ClubMeetingImpl;

  factory _ClubMeeting.fromJson(Map<String, dynamic> json) =
      _$ClubMeetingImpl.fromJson;

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
  bool get isSubscribed;
  @override
  bool get isAdministrator;
  @override
  int get numOfAttender;
  @override
  @JsonKey(ignore: true)
  _$$ClubMeetingImplCopyWith<_$ClubMeetingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
