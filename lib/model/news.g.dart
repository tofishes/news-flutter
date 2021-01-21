// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(
      json['id'] as int,
      json['replies'] as int,
      json['created'] as int,
      json['last_modified'] as int,
      json['last_reply_by'] as String,
      json['last_touched'] as int,
      json['title'] as String,
      json['content'] as String,
      json['content_rendered'] as String,
      json['member'] == null
          ? null
          : Member.fromJson(json['member'] as Map<String, dynamic>),
      json['node'] == null
          ? null
          : Node.fromJson(json['node'] as Map<String, dynamic>),
      json['url'] as String);
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'node': instance.node,
      'member': instance.member,
      'content_rendered': instance.contentRendered,
      'last_reply_by': instance.lastReplyBy,
      'last_touched': instance.lastTouched,
      'last_modified': instance.lastModified,
      'title': instance.title,
      'url': instance.url,
      'content': instance.content,
      'id': instance.id,
      'replies': instance.replies,
      'created': instance.created
    };
