import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/loading_indicator.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewMaker extends StatefulWidget {
  const NewsListViewMaker({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewMaker> createState() => _NewsListViewMakerState();
}

class _NewsListViewMakerState extends State<NewsListViewMaker> {
  var futureData;
  @override
  void initState() {
    // TODO: implement initState

    futureData = NewsService(dio: Dio()).getNews(
      category: widget.category,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingIndicator();
          } else if (snapshot.hasError) {
            return const Center(
                child: Text('there was an error, please try again later..'));
          } else {
            return NewsListView(
              articles: snapshot.data!,
            );
          }
        });
  }
}
