import 'package:flutter/material.dart';
import '../../widgets/index.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: PandaText(data: 'Inbox Page'),
      );
  }
}