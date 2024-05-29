// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageCreate _$MessageCreateFromJson(Map<String, dynamic> json) {
  return _MessageCreate.fromJson(json);
}

/// @nodoc
mixin _$MessageCreate {
  int get conversation => throw _privateConstructorUsedError;
  int get author => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCreateCopyWith<MessageCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCreateCopyWith<$Res> {
  factory $MessageCreateCopyWith(
          MessageCreate value, $Res Function(MessageCreate) then) =
      _$MessageCreateCopyWithImpl<$Res, MessageCreate>;
  @useResult
  $Res call({int conversation, int author, String text});
}

/// @nodoc
class _$MessageCreateCopyWithImpl<$Res, $Val extends MessageCreate>
    implements $MessageCreateCopyWith<$Res> {
  _$MessageCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
    Object? author = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageCreateImplCopyWith<$Res>
    implements $MessageCreateCopyWith<$Res> {
  factory _$$MessageCreateImplCopyWith(
          _$MessageCreateImpl value, $Res Function(_$MessageCreateImpl) then) =
      __$$MessageCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int conversation, int author, String text});
}

/// @nodoc
class __$$MessageCreateImplCopyWithImpl<$Res>
    extends _$MessageCreateCopyWithImpl<$Res, _$MessageCreateImpl>
    implements _$$MessageCreateImplCopyWith<$Res> {
  __$$MessageCreateImplCopyWithImpl(
      _$MessageCreateImpl _value, $Res Function(_$MessageCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
    Object? author = null,
    Object? text = null,
  }) {
    return _then(_$MessageCreateImpl(
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageCreateImpl implements _MessageCreate {
  const _$MessageCreateImpl(
      {required this.conversation, required this.author, required this.text});

  factory _$MessageCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageCreateImplFromJson(json);

  @override
  final int conversation;
  @override
  final int author;
  @override
  final String text;

  @override
  String toString() {
    return 'MessageCreate(conversation: $conversation, author: $author, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageCreateImpl &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, conversation, author, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageCreateImplCopyWith<_$MessageCreateImpl> get copyWith =>
      __$$MessageCreateImplCopyWithImpl<_$MessageCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageCreateImplToJson(
      this,
    );
  }
}

abstract class _MessageCreate implements MessageCreate {
  const factory _MessageCreate(
      {required final int conversation,
      required final int author,
      required final String text}) = _$MessageCreateImpl;

  factory _MessageCreate.fromJson(Map<String, dynamic> json) =
      _$MessageCreateImpl.fromJson;

  @override
  int get conversation;
  @override
  int get author;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$MessageCreateImplCopyWith<_$MessageCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
