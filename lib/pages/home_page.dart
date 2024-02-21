import 'package:flutter/material.dart';
import 'package:ngdemo8/widgets/theme_color.dart';
//Inherited widget Theme.of,Bloc,Provider,MesdiaQuerida.of ishlatiladi

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final color = ThemeColor.of(context)?.color ?? Colors.grey;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Inherited Widget"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              color: color,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
            ),
            Container(
              height: 100,
              color: color,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}