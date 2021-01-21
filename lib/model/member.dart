import 'package:json_annotation/json_annotation.dart';

part 'member.g.dart';

@JsonSerializable()
class Member {
  int id;
  int created;

  String username;
  String website;
  String github;
  String psn;
  String bio;
  String url;
  String tagline;
  String twitter;
  String location;
  String btc;

  @JsonKey(name: 'avatar_normal')
  String avatarNormal;

  @JsonKey(name: 'avatar_large')
  String avatarLarge;

  @JsonKey(name: 'avatar_mini')
  String avatarMini;

  Member(
    this.id,
    this.created,
    this.avatarLarge,
    this.avatarMini,
    this.avatarNormal,
    this.bio,
    this.btc,
    this.url,
    this.github,
    this.location,
    this.psn,
    this.tagline,
    this.twitter,
    this.username,
    this.website
  );

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

  Map<String, dynamic> toJson() => _$MemberToJson(this);
}