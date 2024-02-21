import 'package:flutter/material.dart';
import 'package:ngdemo8/pages/counter_page.dart';
import 'package:ngdemo8/pages/second_page.dart';

class GlobalKeyPage extends StatefulWidget {
  const GlobalKeyPage({super.key});

  @override
  State<GlobalKeyPage> createState() => _GlobalKeyPageState();
}

class _GlobalKeyPageState extends State<GlobalKeyPage> {
  late GlobalKey<CounterPageState> _counterState;

  Future _openSecondPage() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return SecondPage(_counterState);
    }));
  }

  @override
  void initState() {
    super.initState();
    _counterState = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Global Key"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterPage(
              key: _counterState,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          _openSecondPage();
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}