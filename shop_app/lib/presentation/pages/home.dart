import 'package:flutter/material.dart';
import 'package:shop_app/presentation/widgets/custom_grid.dart';
import 'package:shop_app/presentation/widgets/custom_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
        ),
        actions: [
          const Icon(
            Icons.search,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Women",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 50,
            child: CustomListView(),
          ),
          Expanded(
            child: CustomGrid(),
          ),
        ],
      ),
    );
  }
}
