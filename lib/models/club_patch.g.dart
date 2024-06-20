// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_patch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClubPatchImpl _$$ClubPatchImplFromJson(Map<String, dynamic> json) =>
    _$ClubPatchImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      cityFias: json['city_fias'] as String,
      admin: (json['admin'] as num).toInt(),
      interests:
          (json['interests'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ClubPatchImplToJson(_$ClubPatchImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'city_fias': instance.cityFias,
      'admin': instance.admin,
      'interests': instance.interests,
    };
