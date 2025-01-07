  import 'package:flutter/material.dart';
import 'package:wallpaper_flutter_app/widget/tab_bar_item_widget.dart';

Widget buildTabBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: TabBar(
        dividerColor: Colors.black,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        tabs: const [
          TabBarItem(label: 'Activity'),
          TabBarItem(label: 'Community'),
          TabBarItem(label: 'Shop'),
        ],
      ),
    );
  }