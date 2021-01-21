// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Node _$NodeFromJson(Map<String, dynamic> json) {
  return Node(
      json['id'] as int,
      json['url'] as String,
      json['avatar_normal'] as String,
      json['avatar_mini'] as String,
      json['avatar_large'] as String,
      json['title'] as String,
      json['footer'] as String,
      json['header'] as String,
      json['name'] as String,
      json['parent_node_name'] as String,
      json['root'] as bool,
      json['stars'] as int,
      json['title_alternative'] as String,
      json['topics'] as int);
}

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'id': instance.id,
      'stars': instance.stars,
      'topics': instance.topics,
      'root': instance.root,
      'name': instance.name,
      'url': instance.url,
      'title': instance.title,
      'footer': instance.footer,
      'header': instance.header,
      'avatar_large': instance.avatarLarge,
      'avatar_normal': instance.avatarNormal,
      'avatar_mini': instance.avatarMini,
      'title_alternative': instance.titleAlternative,
      'parent_node_name': instance.parentNodeName
    };
