// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreeTokenImpl _$$FreeTokenImplFromJson(Map<String, dynamic> json) =>
    _$FreeTokenImpl(
      userId: json['user_id'] as String,
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$FreeTokenImplToJson(_$FreeTokenImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
