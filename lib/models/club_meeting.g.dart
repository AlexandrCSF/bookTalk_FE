// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_meeting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClubMeetingImpl _$$ClubMeetingImplFromJson(Map<String, dynamic> json) =>
    _$ClubMeetingImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      location: json['location'] as String,
      club: (json['club'] as num).toInt(),
      isSubscribed: json['isSubscribed'] as bool,
      isAdministrator: json['isAdministrator'] as bool,
      numOfAttender: (json['numOfAttender'] as num).toInt(),
    );

Map<String, dynamic> _$$ClubMeetingImplToJson(_$ClubMeetingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
      'time': instance.time,
      'location': instance.location,
      'club': instance.club,
      'isSubscribed': instance.isSubscribed,
      'isAdministrator': instance.isAdministrator,
      'numOfAttender': instance.numOfAttender,
    };
