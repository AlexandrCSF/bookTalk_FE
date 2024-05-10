// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscribeImpl _$$SubscribeImplFromJson(Map<String, dynamic> json) =>
    _$SubscribeImpl(
      userId: (json['user_id'] as num).toInt(),
      clubId: (json['club_id'] as num).toInt(),
    );

Map<String, dynamic> _$$SubscribeImplToJson(_$SubscribeImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'club_id': instance.clubId,
    };
