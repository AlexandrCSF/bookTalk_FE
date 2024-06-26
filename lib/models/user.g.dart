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
      password: json['password'] as String,
      interests: (json['interests'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      picture: json['picture'] as String,
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
      'password': instance.password,
      'interests': instance.interests,
      'picture': instance.picture,
    };
