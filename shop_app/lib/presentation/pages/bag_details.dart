import 'package:flutter/material.dart';

class BagDetails extends StatelessWidget {
  BagDetails({super.key, required this.image, required this.color});
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: color,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Airstoric Hand Bag",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Office Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Price",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    r"$243",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 150,
                    bottom: 390,
                    right: 20,
                    child: Container(
                      child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 16,
                    right: 16,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    ),
                  ),
                  Positioned(
                    top: 280,
                    left: 16,
                    right: 16,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor:
                              const Color.fromARGB(255, 236, 234, 234),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "07",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor:
                              const Color.fromARGB(255, 236, 234, 234),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.favorite_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    top: 350,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 60,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: Colors.black, width: .9),
                            ),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 5,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text("BUY NOW"),
                            color: color,
                            height: 50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
