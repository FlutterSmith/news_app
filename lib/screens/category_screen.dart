import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/widgets/news_list_view_maker.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xffFF2D94),
        onPressed: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        isExtended: true,
        label: const Text('Back'),
        icon: const Icon(Icons.arrow_back_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: CustomScrollView(
        slivers: [
          NewsListViewMaker(
            category: category,
          ),
        ],
      ),
    );
  }
}
