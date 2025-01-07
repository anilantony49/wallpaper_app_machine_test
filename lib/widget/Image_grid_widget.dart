import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper_flutter_app/widget/image_view_page.dart';

class ImageGrid extends StatelessWidget {
  final ScrollController scrollController;
  final List<dynamic> images;

  const ImageGrid(
      {super.key, required this.scrollController, required this.images});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'All Products',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          StaggeredGridView.countBuilder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 4,
            itemCount: images.length,
            itemBuilder: (context, index) {
              var imageUrl = images[index]['urls']['regular'];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageViewPage(
                      imageUrl: imageUrl,
                      heroTag: 'image$index',
                    ),
                  ),
                ),
                child: Hero(
                  tag: 'image$index',
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) =>
                StaggeredTile.count(2, index.isEven ? 2.8 : 2),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
