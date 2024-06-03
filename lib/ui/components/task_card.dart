import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(CupertinoIcons.check_mark_circled, color: Colors.grey),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
