// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClubCreateImpl _$$ClubCreateImplFromJson(Map<String, dynamic> json) =>
    _$ClubCreateImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      adminId: (json['admin_id'] as num).toInt(),
      cityFias: json['city_fias'] as String,
      interests: (json['interests'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$ClubCreateImplToJson(_$ClubCreateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'admin_id': instance.adminId,
      'city_fias': instance.cityFias,
      'interests': instance.interests,
    };
