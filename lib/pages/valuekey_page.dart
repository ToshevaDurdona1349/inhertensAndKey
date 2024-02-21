import 'package:flutter/material.dart';

class ValueKeyPage extends StatefulWidget {
  const ValueKeyPage({super.key});

  @override
  State<ValueKeyPage> createState() => _ValueKeyPageState();
}

class _ValueKeyPageState extends State<ValueKeyPage> {
  bool showFavouriteFramework = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Value Key"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showFavouriteFramework)
              const TextField(
                key: ValueKey("framework"),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Favourite Framework"),
              ),
            const TextField(
              key: ValueKey("language"),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Favourite Language"),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  showFavouriteFramework = false;
                });
              },
              child: Text("Remove Favourite Framework field"),
            ),
          ],
        ),
      ),
    );
  }
}