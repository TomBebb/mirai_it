import 'package:flutter/material.dart';

import '../routes.dart' show router;

class LibraryGridItem extends StatelessWidget {
  const LibraryGridItem({super.key, required this.title, required this.poster});

  final String title;
  final Image poster;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: InkWell(
        onTap: () => router.push("/reader"),
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
      ),
    );
  }
}
