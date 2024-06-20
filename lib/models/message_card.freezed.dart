// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageCard _$MessageCardFromJson(Map<String, dynamic> json) {
  return _MessageCard.fromJson(json);
}

/// @nodoc
mixin _$MessageCard {
  int get id => throw _privateConstructorUsedError;
  int get conversation => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCardCopyWith<MessageCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCardCopyWith<$Res> {
  factory $MessageCardCopyWith(
          MessageCard value, $Res Function(MessageCard) then) =
      _$MessageCardCopyWithImpl<$Res, MessageCard>;
  @useResult
  $Res call(
      {int id,
      int conversation,
      String firstName,
      String lastName,
      String text,
      String picture});
}

/// @nodoc
class _$MessageCardCopyWithImpl<$Res, $Val extends MessageCard>
    implements $MessageCardCopyWith<$Res> {
  _$MessageCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversation = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? text = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageCardImplCopyWith<$Res>
    implements $MessageCardCopyWith<$Res> {
  factory _$$MessageCardImplCopyWith(
          _$MessageCardImpl value, $Res Function(_$MessageCardImpl) then) =
      __$$MessageCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int conversation,
      String firstName,
      String lastName,
      String text,
      String picture});
}

/// @nodoc
class __$$MessageCardImplCopyWithImpl<$Res>
    extends _$MessageCardCopyWithImpl<$Res, _$MessageCardImpl>
    implements _$$MessageCardImplCopyWith<$Res> {
  __$$MessageCardImplCopyWithImpl(
      _$MessageCardImpl _value, $Res Function(_$MessageCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversation = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? text = null,
    Object? picture = null,
  }) {
    return _then(_$MessageCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageCardImpl implements _MessageCard {
  const _$MessageCardImpl(
      {required this.id,
      required this.conversation,
      required this.firstName,
      required this.lastName,
      required this.text,
      required this.picture});

  factory _$MessageCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageCardImplFromJson(json);

  @override
  final int id;
  @override
  final int conversation;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String text;
  @override
  final String picture;

  @override
  String toString() {
    return 'MessageCard(id: $id, conversation: $conversation, firstName: $firstName, lastName: $lastName, text: $text, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, conversation, firstName, lastName, text, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageCardImplCopyWith<_$MessageCardImpl> get copyWith =>
      __$$MessageCardImplCopyWithImpl<_$MessageCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageCardImplToJson(
      this,
    );
  }
}

abstract class _MessageCard implements MessageCard {
  const factory _MessageCard(
      {required final int id,
      required final int conversation,
      required final String firstName,
      required final String lastName,
      required final String text,
      required final String picture}) = _$MessageCardImpl;

  factory _MessageCard.fromJson(Map<String, dynamic> json) =
      _$MessageCardImpl.fromJson;

  @override
  int get id;
  @override
  int get conversation;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get text;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$MessageCardImplCopyWith<_$MessageCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
