// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClubCreateImpl _$$ClubCreateImplFromJson(Map<String, dynamic> json) =>
    _$ClubCreateImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      adminId: (json['admin_id'] as num).toInt(),
      cityFias: json['city_fias'] as String,
    );

Map<String, dynamic> _$$ClubCreateImplToJson(_$ClubCreateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'admin_id': instance.adminId,
      'city_fias': instance.cityFias,
    };
