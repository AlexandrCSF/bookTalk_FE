// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageCardImpl _$$MessageCardImplFromJson(Map<String, dynamic> json) =>
    _$MessageCardImpl(
      id: (json['id'] as num).toInt(),
      conversation: (json['conversation'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$MessageCardImplToJson(_$MessageCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversation': instance.conversation,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'text': instance.text,
    };
