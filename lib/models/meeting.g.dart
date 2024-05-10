// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingImpl _$$MeetingImplFromJson(Map<String, dynamic> json) =>
    _$MeetingImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      location: json['location'] as String,
      club: (json['club'] as num).toInt(),
    );

Map<String, dynamic> _$$MeetingImplToJson(_$MeetingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
      'time': instance.time,
      'location': instance.location,
      'club': instance.club,
    };
