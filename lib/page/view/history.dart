import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  final _content;

  HistoryView(this._content);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(_content ?? 'default content1'),
      ),
    );
  }
}