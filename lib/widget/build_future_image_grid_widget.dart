  import 'package:flutter/material.dart';
import 'package:wallpaper_flutter_app/repository/repository.dart';
import 'package:wallpaper_flutter_app/widget/Image_grid_widget.dart';

Widget buildFutureImageGrid(ScrollController scrollController) {
    return FutureBuilder<List<dynamic>>(
      future: ImageRepository().fetchImages(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          return ImageGrid(
              scrollController: scrollController, images: snapshot.data!);
        } else {
          return const Center(child: Text('No data found.'));
        }
      },
    );
  }