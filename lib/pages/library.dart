import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key, required this.title});

  final String title;

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      maxCrossAxisExtent: 280,

      children: <Widget>[
        GridTile(
          child: Column(
            children: [
              const Text(
                "Lady Lilt wants a Lazy Afternoon",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
              Image.network(
                "https://img.mangamirai.com/products/BT000178959600400401/book_cover(2).jpg",
              ),
            ],
          ),
        ),
        GridTile(
          child: Image.network(
            "https://img.mangamirai.com/products/BT000191337500100102/book_cover(2).jpg?ver=7f65727597a30d85281fd6ef7972a685a81426f1c6059e3b81bb1490dbe75cee",
          ),
        ),
        GridTile(
          child: Image.network(
            "https://img.mangamirai.com/products/BT000157348500100101/book_cover.jpg?ver=6857c767406743735f90472430c19f2c4c59a3d0c49c0a0078fe4fc7cbd089c3",
          ),
        ),
        GridTile(
          child: Image.network(
            "https://img.mangamirai.com/products/BT000191337500100102/book_cover(2).jpg?ver=7f65727597a30d85281fd6ef7972a685a81426f1c6059e3b81bb1490dbe75cee",
          ),
        ),
        GridTile(
          child: Image.network(
            "https://img.mangamirai.com/products/BT000191337500100102/book_cover(2).jpg?ver=7f65727597a30d85281fd6ef7972a685a81426f1c6059e3b81bb1490dbe75cee",
          ),
        ),
        GridTile(
          child: Image.network(
            "https://img.mangamirai.com/products/BT000191337500100102/book_cover(2).jpg?ver=7f65727597a30d85281fd6ef7972a685a81426f1c6059e3b81bb1490dbe75cee",
          ),
        ),
        GridTile(
          child: Image.network(
            "https://img.mangamirai.com/products/BT000191337500100102/book_cover(2).jpg?ver=7f65727597a30d85281fd6ef7972a685a81426f1c6059e3b81bb1490dbe75cee",
          ),
        ),
        GridTile(
          child: Image.network(
            "https://img.mangamirai.com/products/BT000191337500100102/book_cover(2).jpg?ver=7f65727597a30d85281fd6ef7972a685a81426f1c6059e3b81bb1490dbe75cee",
          ),
        ),
      ],
    );
  }
}
