  import 'package:flutter/material.dart';

Widget buildFollowButton() {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 0.1,
      color: Colors.red,
      onPressed: () {},
      height: 48,
      minWidth: 80,
      child: const Text('Follow', style: TextStyle(color: Colors.white)),
    );
  }
