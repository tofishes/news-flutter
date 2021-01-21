import 'package:json_annotation/json_annotation.dart';

import 'news.dart';

@JsonSerializable()
class NewsList {
  List<News> items;

  NewsList(this.items);

  factory NewsList.fromJson(List<dynamic> json) {
    List<News> list = json.map((item) => News.fromJson(item)).toList();

    return NewsList(list);
  }
}