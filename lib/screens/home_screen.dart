import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view_maker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Color(0xff253139),
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Color(0xffEF9709),
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            Text(
              ' & #AH',
              style: TextStyle(
                color: Color(0xffEF9709),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 28,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 25,
              ),
            ),
            NewsListViewMaker(category: 'general',),
          ],
        ),
        // Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 25,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
