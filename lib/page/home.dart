import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './view/news_list.dart';
import './view/history.dart';
import './view/favorite.dart';
import '../app_theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  List _homeViews = <Widget>[
    NewsListView(),
    HistoryView('second screen'),
    FavoriteView('three screen')
  ];
  int _activeIndex = 0;

  final iconsMap = {
    'home': Icons.home,
    'history': Icons.history,
    'favorite': Icons.favorite
  };

  void switchTab(int index) {
    if (!this.mounted) {
      print('tab switch...');
      return;
    }

    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final barItems = ['home', 'history', 'favorite'].map((name) => BottomNavigationBarItem(
      icon: Icon(iconsMap[name]),
      // title: Text(name)
    )).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('home screen'),
        elevation: 0.1,
      ),
      body: _homeViews[_activeIndex],
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _activeIndex,
        activeColor: Colors.white,
        backgroundColor: AppTheme.color.main,
        items: barItems,
        onTap: switchTab
      ),
      backgroundColor: AppTheme.color.main
    );
  }
}