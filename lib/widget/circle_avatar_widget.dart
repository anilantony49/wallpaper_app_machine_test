import 'package:flutter/material.dart';

class CircleAvatarWithBorder extends StatelessWidget {
  final String imagePath;

  const CircleAvatarWithBorder({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2.0),
      ),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}