// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shop_app/data/models/bag_type.dart';
import 'package:shop_app/presentation/widgets/bag_type.dart';

class CustomGrid extends StatelessWidget {
  CustomGrid({super.key});

  List<Bag> bag = [
    Bag(
        image: "assets/images/bag_1.png",
        price: "200",
        color: Color(0xff4482B1)),
    Bag(
        image: "assets/images/bag_2.png",
        price: "230",
        color: Color(0xffD2A885)),
    Bag(
        image: "assets/images/bag_3.png",
        price: "240",
        color: Color(0xff9A9494)),
    Bag(
        image: "assets/images/bag_4.png",
        price: "500",
        color: Color(0xffE4B399)),
    Bag(
        image: "assets/images/bag_5.png",
        price: "100",
        color: Color(0xffC76469)),
    Bag(
        image: "assets/images/bag_6.png",
        price: "250",
        color: Color(0xff8E8D8F)),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: bag.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return BagType(bagType: bag[index]);
      },
    );
  }
}
