import 'package:flutter/material.dart';

import 'counter_page.dart';

class SecondPage extends StatefulWidget {

  final GlobalKey<CounterPageState> counterKey;

  const SecondPage(this.counterKey);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Second Page"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.counterKey.currentState!.count.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            MaterialButton(
              onPressed: (){
                setState(() {
                  widget.counterKey.currentState!.count++;
                  print(widget.counterKey.currentState!.count);
                });
              },
              color: Colors.green,
              child: Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}