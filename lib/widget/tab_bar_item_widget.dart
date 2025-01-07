import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final String label;

  const TabBarItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 100, minHeight: 40),
      alignment: Alignment.center,
      child: Text(label, style: const TextStyle(fontSize: 13)),
    );
  }
}