import 'package:flutter/material.dart';

class LibraryGridItem extends StatelessWidget {
  const LibraryGridItem({super.key, required this.title, required this.poster});

  final String title;
  final Image poster;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          poster,
        ],
      ),
    );
  }
}
