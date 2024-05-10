// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_patch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingPatchImpl _$$MeetingPatchImplFromJson(Map<String, dynamic> json) =>
    _$MeetingPatchImpl(
      name: json['name'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$MeetingPatchImplToJson(_$MeetingPatchImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'time': instance.time,
      'location': instance.location,
    };
