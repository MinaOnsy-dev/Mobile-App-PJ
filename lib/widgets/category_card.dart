import 'package:flutter/material.dart';
import 'package:NewsCloud/models/category_model.dart';
import 'package:NewsCloud/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CategoryView(
                  category: category.categoryName,
                );
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          height: 130,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(category.image),
                fit: BoxFit.fill,
              )),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ));
  }
}
