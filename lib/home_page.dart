import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper_flutter_app/widget/image_view_page.dart';
import 'package:wallpaper_flutter_app/widget/build_draggable_srollable_sheet_widget.dart';
import 'package:wallpaper_flutter_app/widget/build_tabbar_widget.dart';
import 'package:wallpaper_flutter_app/widget/build_top_row_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ColorfulSafeArea(
          color: Colors.black,
          child: Stack(
            children: [
              Column(
                children: [
                  buildTopRow(),
                  buildTabBar(),
                ],
              ),
              buildDraggableScrollableSheet(),
            ],
          ),
        ),
      ),
    );
  }
}
