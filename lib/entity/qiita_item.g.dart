// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QiitaItemImpl _$$QiitaItemImplFromJson(Map<String, dynamic> json) =>
    _$QiitaItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      author: QiitaUser.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      likesCount: (json['likes_count'] as num).toInt(),
    );

Map<String, dynamic> _$$QiitaItemImplToJson(_$QiitaItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'user': instance.author,
      'created_at': instance.createdAt.toIso8601String(),
      'likes_count': instance.likesCount,
    };

_$QiitaUserImpl _$$QiitaUserImplFromJson(Map<String, dynamic> json) =>
    _$QiitaUserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      profileImageUrl: json['profile_image_url'] as String,
    );

Map<String, dynamic> _$$QiitaUserImplToJson(_$QiitaUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_image_url': instance.profileImageUrl,
    };
