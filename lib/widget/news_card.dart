import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:common_utils/common_utils.dart';

import '../app_theme.dart';
import '../model/news.dart';
import '../widget/html.dart' as html;

class NewsCard extends StatelessWidget {
  final News news;

  NewsCard(this.news);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppTheme.color.forecolor,
        boxShadow: [
          BoxShadow(
            color: AppTheme.color.line,
            blurRadius: 8,
            spreadRadius: 4,
            offset: Offset(0, 6)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                html.Box(space: [0, 0, 15], child: html.H3(news.title)),
              ]
            ))
          ]),
          Row(
            children: [
              html.Box(
                space: [0, 10, 0, 0],
                child: ClipOval(
                  child: FadeInImage.memoryNetwork(
                    width: 48,
                    height: 48,
                    placeholder: kTransparentImage,
                    image: 'https:${ news.member.avatarLarge }&s=48'.replaceAll('_mini', '_normal')
                  )
                )
              ),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  html.Box(space: [2], child: html.H4(news.member.username)),
                  html.Box(space: [2], child: DefaultTextStyle(
                    style: TextStyle(color: Colors.white70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(TimelineUtil.formatByDateTime(DateTime.fromMillisecondsSinceEpoch(news.created * 1000))),
                            html.Divider(type: 'dot', color: Colors.white70),
                            Icon(Icons.comment, color: Colors.white70, size: 14),
                            Text(' ${news.replies}')
                          ],
                        ),
                        Text(news.node.title)
                      ],
                    ),
                  ))
                ]
              ))
            ]
          )
        ],
      )
    );
  }
}