import 'package:json_annotation/json_annotation.dart';

import 'node.dart';
import 'member.dart';

part 'news.g.dart';

@JsonSerializable()
class News {
  Node node;
  Member member;

  @JsonKey(name: 'content_rendered')
  String contentRendered;

  @JsonKey(name: 'last_reply_by')
  String lastReplyBy;

  @JsonKey(name: 'last_touched')
  int lastTouched;

  @JsonKey(name: 'last_modified')
  int lastModified;

  String title;
  String url;
  String content;

  int id;
  int replies;
  int created;

  News(
    this.id,
    this.replies,
    this.created,
    this.lastModified,
    this.lastReplyBy,
    this.lastTouched,
    this.title,
    this.content,
    this.contentRendered,
    this.member,
    this.node,
    this.url
  );

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}