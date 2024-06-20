// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClubCard _$ClubCardFromJson(Map<String, dynamic> json) {
  return _ClubCard.fromJson(json);
}

/// @nodoc
mixin _$ClubCard {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  User get admin => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  List<Genre> get interests => throw _privateConstructorUsedError;
  List<Meeting> get meetings => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  int? get numOfSubscribers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubCardCopyWith<ClubCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubCardCopyWith<$Res> {
  factory $ClubCardCopyWith(ClubCard value, $Res Function(ClubCard) then) =
      _$ClubCardCopyWithImpl<$Res, ClubCard>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      User admin,
      String city,
      List<Genre> interests,
      List<Meeting> meetings,
      String picture,
      int? numOfSubscribers});

  $UserCopyWith<$Res> get admin;
}

/// @nodoc
class _$ClubCardCopyWithImpl<$Res, $Val extends ClubCard>
    implements $ClubCardCopyWith<$Res> {
  _$ClubCardCopyWithImpl(this._value, this._then);

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
    Object? admin = null,
    Object? city = null,
    Object? interests = null,
    Object? meetings = null,
    Object? picture = null,
    Object? numOfSubscribers = freezed,
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
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as User,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      meetings: null == meetings
          ? _value.meetings
          : meetings // ignore: cast_nullable_to_non_nullable
              as List<Meeting>,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      numOfSubscribers: freezed == numOfSubscribers
          ? _value.numOfSubscribers
          : numOfSubscribers // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get admin {
    return $UserCopyWith<$Res>(_value.admin, (value) {
      return _then(_value.copyWith(admin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClubCardImplCopyWith<$Res>
    implements $ClubCardCopyWith<$Res> {
  factory _$$ClubCardImplCopyWith(
          _$ClubCardImpl value, $Res Function(_$ClubCardImpl) then) =
      __$$ClubCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      User admin,
      String city,
      List<Genre> interests,
      List<Meeting> meetings,
      String picture,
      int? numOfSubscribers});

  @override
  $UserCopyWith<$Res> get admin;
}

/// @nodoc
class __$$ClubCardImplCopyWithImpl<$Res>
    extends _$ClubCardCopyWithImpl<$Res, _$ClubCardImpl>
    implements _$$ClubCardImplCopyWith<$Res> {
  __$$ClubCardImplCopyWithImpl(
      _$ClubCardImpl _value, $Res Function(_$ClubCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? admin = null,
    Object? city = null,
    Object? interests = null,
    Object? meetings = null,
    Object? picture = null,
    Object? numOfSubscribers = freezed,
  }) {
    return _then(_$ClubCardImpl(
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
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as User,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      meetings: null == meetings
          ? _value._meetings
          : meetings // ignore: cast_nullable_to_non_nullable
              as List<Meeting>,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      numOfSubscribers: freezed == numOfSubscribers
          ? _value.numOfSubscribers
          : numOfSubscribers // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClubCardImpl implements _ClubCard {
  const _$ClubCardImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.admin,
      required this.city,
      required final List<Genre> interests,
      required final List<Meeting> meetings,
      required this.picture,
      this.numOfSubscribers})
      : _interests = interests,
        _meetings = meetings;

  factory _$ClubCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClubCardImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final User admin;
  @override
  final String city;
  final List<Genre> _interests;
  @override
  List<Genre> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  final List<Meeting> _meetings;
  @override
  List<Meeting> get meetings {
    if (_meetings is EqualUnmodifiableListView) return _meetings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meetings);
  }

  @override
  final String picture;
  @override
  final int? numOfSubscribers;

  @override
  String toString() {
    return 'ClubCard(id: $id, name: $name, description: $description, admin: $admin, city: $city, interests: $interests, meetings: $meetings, picture: $picture, numOfSubscribers: $numOfSubscribers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality().equals(other._meetings, _meetings) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.numOfSubscribers, numOfSubscribers) ||
                other.numOfSubscribers == numOfSubscribers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      admin,
      city,
      const DeepCollectionEquality().hash(_interests),
      const DeepCollectionEquality().hash(_meetings),
      picture,
      numOfSubscribers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubCardImplCopyWith<_$ClubCardImpl> get copyWith =>
      __$$ClubCardImplCopyWithImpl<_$ClubCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClubCardImplToJson(
      this,
    );
  }
}

abstract class _ClubCard implements ClubCard {
  const factory _ClubCard(
      {required final int id,
      required final String name,
      required final String description,
      required final User admin,
      required final String city,
      required final List<Genre> interests,
      required final List<Meeting> meetings,
      required final String picture,
      final int? numOfSubscribers}) = _$ClubCardImpl;

  factory _ClubCard.fromJson(Map<String, dynamic> json) =
      _$ClubCardImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  User get admin;
  @override
  String get city;
  @override
  List<Genre> get interests;
  @override
  List<Meeting> get meetings;
  @override
  String get picture;
  @override
  int? get numOfSubscribers;
  @override
  @JsonKey(ignore: true)
  _$$ClubCardImplCopyWith<_$ClubCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
