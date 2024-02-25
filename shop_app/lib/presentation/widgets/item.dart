// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/data/models/category.dart';
import 'package:shop_app/logic/selected_provider.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.category});

  final Category category;
  List<Category> itemList = [
    Category(name: "Hand Bag"),
    Category(name: "Jewellery"),
    Category(name: "Footwear"),
    Category(name: "Dresses"),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Selected>(
      builder: (context, value, child) {
        return InkWell(
          onTap: () {
            value.selectedIndex(itemList.length);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${category.name}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: value.selectIndex == itemList.length
                        ? Colors.black
                        : Colors.grey),
              ),
              SizedBox(
                width: 30,
                height: 10,
                child: Divider(
                  color: value.selectIndex == itemList.length
                      ? Colors.black
                      : Colors.white,
                  thickness: 4,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
