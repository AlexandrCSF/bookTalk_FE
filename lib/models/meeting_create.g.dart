// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingCreateImpl _$$MeetingCreateImplFromJson(Map<String, dynamic> json) =>
    _$MeetingCreateImpl(
      name: json['name'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$MeetingCreateImplToJson(_$MeetingCreateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'time': instance.time,
      'location': instance.location,
    };
