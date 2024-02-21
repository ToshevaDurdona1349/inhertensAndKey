import 'package:flutter/material.dart';

class GetEmoji extends StatefulWidget {
  String emoji;
   GetEmoji({super.key,required this.emoji});

  @override
  State<GetEmoji> createState() => _GetEmojiState();
}

class _GetEmojiState extends State<GetEmoji> {
  late String emoji;
  @override
  Widget build(BuildContext context) {
    return Text(
      emoji,
      style: const TextStyle(
        fontSize: 100,
      ),
    );
  }
}
