import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  final _content;

  FavoriteView(this._content);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(_content ?? 'default content'),
      ),
    );
  }
}