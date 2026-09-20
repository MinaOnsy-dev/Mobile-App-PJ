import 'package:flutter/material.dart';

class CategoryModel extends StatelessWidget {
  final String image;
  final String categoryName;

  const CategoryModel(
      {super.key, required this.image, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      height: 130,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          )),
      child: Center(
          child: Text(
        categoryName,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
