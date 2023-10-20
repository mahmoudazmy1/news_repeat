import 'package:flutter/material.dart';
import 'package:repeat_news_api/category_details.dart';
import 'package:repeat_news_api/home_screen.dart';
import 'package:repeat_news_api/my_them.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CategoryDetails.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        CategoryDetails.routeName: (context) => CategoryDetails(),
      },
      theme: MyThem.lightThem,
    );
  }
}
