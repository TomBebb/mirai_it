import 'package:flutter/material.dart';

class LibraryGridItem extends StatelessWidget {
  const LibraryGridItem({super.key, required this.title, required this.url});

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.network(url),
        ],
      ),
    );
  }
}
