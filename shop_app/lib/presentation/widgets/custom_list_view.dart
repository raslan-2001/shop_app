// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shop_app/data/models/category.dart';
import 'package:shop_app/presentation/widgets/item.dart';

class CustomListView extends StatelessWidget {
  CustomListView({super.key});

  List<Category> itemList = [
    Category(name: "Hand Bag"),
    Category(name: "Jewellery"),
    Category(name: "Footwear"),
    Category(name: "Dresses"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemList.length,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 32.0, left: 16),
          child: Item(
            category: itemList[index],
          ),
        );
      },
    );
  }
}
