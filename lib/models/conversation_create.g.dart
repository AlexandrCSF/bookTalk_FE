// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationCreateImpl _$$ConversationCreateImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationCreateImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      createdBy: (json['created_by'] as num).toInt(),
      club: (json['club'] as num).toInt(),
    );

Map<String, dynamic> _$$ConversationCreateImplToJson(
        _$ConversationCreateImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'created_by': instance.createdBy,
      'club': instance.club,
    };
