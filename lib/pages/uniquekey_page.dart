import 'package:flutter/material.dart';

import '../widgets/get_emoji.dart';

class UniqueKeyPage extends StatefulWidget {
  const UniqueKeyPage({super.key});

  @override
  State<UniqueKeyPage> createState() => _UniqueKeyPageState();
}

class _UniqueKeyPageState extends State<UniqueKeyPage> {
  List<Widget> emojis = [GetEmoji(key: UniqueKey(),emoji: "😎"), GetEmoji(key: UniqueKey(), emoji: "🤠")];

  void swapEmoji() {
    print(UniqueKey());
    setState(() {
      emojis.insert(1, emojis.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unique Key"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: emojis,
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: swapEmoji,
            child: const Text("Swap"),
          ),
        ],
      ),
    );
  }
}