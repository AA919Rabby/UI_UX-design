import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_app/screens/clone_screen.dart';
import 'package:testing_app/screens/food_screen.dart';
import 'package:testing_app/screens/view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
      //home: CloneScreen(),
     // home: ViewScreen(),
      home: FoodScreen(),
    );
  }
}
