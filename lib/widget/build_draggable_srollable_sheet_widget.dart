  import 'package:flutter/material.dart';
import 'package:wallpaper_flutter_app/widget/build_future_image_grid_widget.dart';

Widget buildDraggableScrollableSheet() {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.8,
      maxChildSize: 1.0,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Expanded(
                child: TabBarView(
                  controller: DefaultTabController.of(context),
                  children: List.generate(
                      3, (_) => buildFutureImageGrid(scrollController)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }