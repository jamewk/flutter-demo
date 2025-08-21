import 'package:flutter/material.dart';

class PandaText extends StatelessWidget {
  final String data;
  const PandaText({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
