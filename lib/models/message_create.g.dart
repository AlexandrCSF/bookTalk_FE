// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageCreateImpl _$$MessageCreateImplFromJson(Map<String, dynamic> json) =>
    _$MessageCreateImpl(
      conversation: (json['conversation'] as num).toInt(),
      author: (json['author'] as num).toInt(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$MessageCreateImplToJson(_$MessageCreateImpl instance) =>
    <String, dynamic>{
      'conversation': instance.conversation,
      'author': instance.author,
      'text': instance.text,
    };
