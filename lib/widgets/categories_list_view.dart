import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      imageAssetUrl: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/entertaiment.avif',
      categoryName: 'entertainment',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/health.avif',
      categoryName: 'health',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/general.avif',
      categoryName: 'general',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/science.avif',
      categoryName: 'science',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/technology.jpeg',
      categoryName: 'technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
