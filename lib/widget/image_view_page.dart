import 'package:flutter/material.dart';
import 'package:wallpaper_flutter_app/home_page.dart';

class ImageViewPage extends StatelessWidget {
  final String imageUrl;
  final String heroTag;

  const ImageViewPage(
      {super.key, required this.imageUrl, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.save, color: Colors.grey, size: 30),
            onPressed: () {},
          ),
          SizedBox(
            width: 25,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>HomePage()
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.grey,
        ),
        backgroundColor: Colors.black,
        title: const Text(
          'Image View',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: heroTag,
          child: InteractiveViewer(
            panEnabled: true,
            boundaryMargin: const EdgeInsets.all(20),
            minScale: 0.5,
            maxScale: 4.0,
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
