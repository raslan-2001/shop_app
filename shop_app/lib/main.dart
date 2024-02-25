import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/logic/selected_provider.dart';
import 'package:shop_app/presentation/pages/home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Selected>(
          create: (context) {
            return Selected();
          },
        ),
      ],
      child: ShopApp(),
    ),
  );
}

class ShopApp extends StatelessWidget {
  ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.grey, size: 30),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
