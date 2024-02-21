import 'package:flutter/material.dart';
import 'package:ngdemo8/pages/counter_page.dart';
import 'package:ngdemo8/pages/details_page.dart';
import 'package:ngdemo8/pages/globalkey_page.dart';
import 'package:ngdemo8/pages/home_page.dart';
import 'package:ngdemo8/pages/lifecycle_page.dart';
import 'package:ngdemo8/pages/objectkey_page.dart';
import 'package:ngdemo8/pages/second_page.dart';
import 'package:ngdemo8/pages/uniquekey_page.dart';
import 'package:ngdemo8/pages/valuekey_page.dart';
import 'package:ngdemo8/widgets/theme_color.dart';
//99%-Required ***
//1- App Lifecycles & Widget Lifecycles
//2- Stateless Widget, Stateful Widgets, Inherited Widget
//3- Widget Tree, Element Tree
//4- Value Key, Unique Key, Object Key, Global Key
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeColor(
      color: Colors.black,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:ValueKeyPage(),
      ),
    );
  }
}

