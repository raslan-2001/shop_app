import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shop_app/data/models/bag_type.dart';
import 'package:shop_app/presentation/pages/bag_details.dart';

class BagType extends StatelessWidget {
  BagType({super.key, required this.bagType});
  final Bag bagType;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 500),
            alignment: Alignment.topLeft,
            child: BagDetails(
              image: bagType.image,
              color: bagType.color,
            ),
          ),
        );
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return BagDetails(
        //         image: bagType.image,
        //         color: bagType.color,
        //       );
        //     },
        //   ),
        // );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: 200,
              height: 240,
              decoration: BoxDecoration(
                color: bagType.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(bagType.image),
            ),
            Text(
              "Office Bag",
              style: TextStyle(fontSize: 17),
            ),
            Text(
              r"$" "${bagType.price}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
