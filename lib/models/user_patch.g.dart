// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_patch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPatchImpl _$$UserPatchImplFromJson(Map<String, dynamic> json) =>
    _$UserPatchImpl(
      username: json['username'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      city: json['city'] as String,
      interests:
          (json['interests'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserPatchImplToJson(_$UserPatchImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'city': instance.city,
      'interests': instance.interests,
    };
