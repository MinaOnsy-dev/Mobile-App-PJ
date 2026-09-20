import 'package:flutter/material.dart';
import 'package:NewsCloud/models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/a realistic photo-st.png',
      categoryName: 'General',
    ),
    CategoryModel(
      image: 'assets/business.png',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertainment.png',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.png',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/sports_Category.jpeg',
      categoryName: 'Sports',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
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
