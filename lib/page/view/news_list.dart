import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../../widget/news_card.dart';
import '../../model/news_list.dart';

class NewsListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewsListState();
  }
}

class NewsListState extends State<NewsListView> {
  bool loading = true;
  bool moreLoading = false;
  NewsList newsList;
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (moreLoading) {
        return;
      }

      if (_controller.position.pixels >= _controller.position.maxScrollExtent
        && _controller.position.outOfRange) {
        print('end..');
        loadListData();
      }
    });

    loadListData();
  }

  Future<void> loadListData() async {
    moreLoading = true;

    Dio dio = new Dio();
    Response<dynamic> response = await dio.get('https://www.v2ex.com/api/topics/latest.json');

    if (!this.mounted) {
      print('list http loaded...');
      return;
    }

    print('load list ...');

    setState(() {
      loading = false;
      newsList = NewsList.fromJson(response.data);
    });

    moreLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => loadListData(),
      child: Container(
        child: loading ? CircularProgressIndicator() :
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return NewsCard(newsList.items[index]);
            },
            physics: AlwaysScrollableScrollPhysics(),
            controller: _controller,
          ),
      ),
    );
  }
}