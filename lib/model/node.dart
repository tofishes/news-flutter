import 'package:json_annotation/json_annotation.dart';

part 'node.g.dart';

@JsonSerializable()
class Node {
  int id;
  int stars;
  int topics;
  bool root;

  String name;
  String url;
  String title;
  String footer;
  String header;

  @JsonKey(name: 'avatar_large')
  String avatarLarge;

  @JsonKey(name: 'avatar_normal')
  String avatarNormal;

  @JsonKey(name: 'avatar_mini')
  String avatarMini;

  @JsonKey(name: 'title_alternative')
  String titleAlternative;

  @JsonKey(name: 'parent_node_name')
  String parentNodeName;

  Node(
    this.id,
    this.url,
    this.avatarNormal,
    this.avatarMini,
    this.avatarLarge,
    this.title,
    this.footer,
    this.header,
    this.name,
    this.parentNodeName,
    this.root,
    this.stars,
    this.titleAlternative,
    this.topics
  );

  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);

  Map<String, dynamic> toJson() => _$NodeToJson(this);
}