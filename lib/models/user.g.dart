// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      isSuperuser: json['is_superuser'] as bool,
      username: json['username'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      dateJoined: json['date_joined'] as String,
      email: json['email'] as String,
      city: json['city'] as String,
      uuid: json['uuid'] as String,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_superuser': instance.isSuperuser,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'date_joined': instance.dateJoined,
      'email': instance.email,
      'city': instance.city,
      'uuid': instance.uuid,
      'refresh_token': instance.refresh_token,
    };
