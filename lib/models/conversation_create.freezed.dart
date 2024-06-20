// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationCreate _$ConversationCreateFromJson(Map<String, dynamic> json) {
  return _ConversationCreate.fromJson(json);
}

/// @nodoc
mixin _$ConversationCreate {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int get createdBy => throw _privateConstructorUsedError;
  int get club => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationCreateCopyWith<ConversationCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCreateCopyWith<$Res> {
  factory $ConversationCreateCopyWith(
          ConversationCreate value, $Res Function(ConversationCreate) then) =
      _$ConversationCreateCopyWithImpl<$Res, ConversationCreate>;
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'created_by') int createdBy,
      int club});
}

/// @nodoc
class _$ConversationCreateCopyWithImpl<$Res, $Val extends ConversationCreate>
    implements $ConversationCreateCopyWith<$Res> {
  _$ConversationCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? createdBy = null,
    Object? club = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationCreateImplCopyWith<$Res>
    implements $ConversationCreateCopyWith<$Res> {
  factory _$$ConversationCreateImplCopyWith(_$ConversationCreateImpl value,
          $Res Function(_$ConversationCreateImpl) then) =
      __$$ConversationCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'created_by') int createdBy,
      int club});
}

/// @nodoc
class __$$ConversationCreateImplCopyWithImpl<$Res>
    extends _$ConversationCreateCopyWithImpl<$Res, _$ConversationCreateImpl>
    implements _$$ConversationCreateImplCopyWith<$Res> {
  __$$ConversationCreateImplCopyWithImpl(_$ConversationCreateImpl _value,
      $Res Function(_$ConversationCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? createdBy = null,
    Object? club = null,
  }) {
    return _then(_$ConversationCreateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationCreateImpl implements _ConversationCreate {
  const _$ConversationCreateImpl(
      {required this.title,
      required this.description,
      @JsonKey(name: 'created_by') required this.createdBy,
      required this.club});

  factory _$ConversationCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationCreateImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'created_by')
  final int createdBy;
  @override
  final int club;

  @override
  String toString() {
    return 'ConversationCreate(title: $title, description: $description, createdBy: $createdBy, club: $club)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationCreateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.club, club) || other.club == club));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, createdBy, club);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationCreateImplCopyWith<_$ConversationCreateImpl> get copyWith =>
      __$$ConversationCreateImplCopyWithImpl<_$ConversationCreateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationCreateImplToJson(
      this,
    );
  }
}

abstract class _ConversationCreate implements ConversationCreate {
  const factory _ConversationCreate(
      {required final String title,
      required final String description,
      @JsonKey(name: 'created_by') required final int createdBy,
      required final int club}) = _$ConversationCreateImpl;

  factory _ConversationCreate.fromJson(Map<String, dynamic> json) =
      _$ConversationCreateImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'created_by')
  int get createdBy;
  @override
  int get club;
  @override
  @JsonKey(ignore: true)
  _$$ConversationCreateImplCopyWith<_$ConversationCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
