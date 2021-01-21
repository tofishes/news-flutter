// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Member _$MemberFromJson(Map<String, dynamic> json) {
  return Member(
      json['id'] as int,
      json['created'] as int,
      json['avatar_large'] as String,
      json['avatar_mini'] as String,
      json['avatar_normal'] as String,
      json['bio'] as String,
      json['btc'] as String,
      json['url'] as String,
      json['github'] as String,
      json['location'] as String,
      json['psn'] as String,
      json['tagline'] as String,
      json['twitter'] as String,
      json['username'] as String,
      json['website'] as String);
}

Map<String, dynamic> _$MemberToJson(Member instance) => <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'username': instance.username,
      'website': instance.website,
      'github': instance.github,
      'psn': instance.psn,
      'bio': instance.bio,
      'url': instance.url,
      'tagline': instance.tagline,
      'twitter': instance.twitter,
      'location': instance.location,
      'btc': instance.btc,
      'avatar_normal': instance.avatarNormal,
      'avatar_large': instance.avatarLarge,
      'avatar_mini': instance.avatarMini
    };
