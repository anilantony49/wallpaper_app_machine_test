import 'package:flutter/material.dart';
import 'package:wallpaper_flutter_app/widget/build_follow_button_widget.dart';
import 'package:wallpaper_flutter_app/widget/circle_avatar_widget.dart';

Widget buildTopRow() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        const Icon(Icons.arrow_back_ios, color: Colors.grey),
        const Spacer(),
        const CircleAvatarWithBorder(imagePath: 'assets/images/profile1.jpg'),
        const SizedBox(width: 15),
        buildFollowButton(),
      ],
    ),
  );
}
