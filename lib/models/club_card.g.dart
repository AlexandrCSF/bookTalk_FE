// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClubCardImpl _$$ClubCardImplFromJson(Map<String, dynamic> json) =>
    _$ClubCardImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      admin: User.fromJson(json['admin'] as Map<String, dynamic>),
      city: json['city'] as String,
      interests: (json['interests'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      meetings: (json['meetings'] as List<dynamic>)
          .map((e) => Meeting.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClubCardImplToJson(_$ClubCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'admin': instance.admin,
      'city': instance.city,
      'interests': instance.interests,
      'meetings': instance.meetings,
    };
