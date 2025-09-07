import 'package:flutter/material.dart';
import 'package:mirai_it/widgets/library_grid_item.dart';

class LibraryPage extends StatefulWidget {
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
        LibraryGridItem(
          title: "Lady Lily wants a Lazy Afternoon",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000191337500100102/book_cover(2).jpg",
          ),
        ),
        LibraryGridItem(
          title: "I Want to End This Love Game",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000191337500100102/book_cover(2).jpg",
          ),
        ),
        LibraryGridItem(
          title: "Red Ranger",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000171206201601602/book_cover(2).jpg",
          ),
        ),
        LibraryGridItem(
          title: "Red Ranger",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000171206201601602/book_cover(2).jpg",
          ),
        ),

        LibraryGridItem(
          title: "Red Ranger",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000171206201601602/book_cover(2).jpg",
          ),
        ),

        LibraryGridItem(
          title: "Red Ranger",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000171206201601602/book_cover(2).jpg",
          ),
        ),

        LibraryGridItem(
          title: "Red Ranger",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000171206201601602/book_cover(2).jpg",
          ),
        ),
        LibraryGridItem(
          title: "Red Ranger",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000171206201601602/book_cover(2).jpg",
          ),
        ),
        LibraryGridItem(
          title: "Red Ranger",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000171206201601602/book_cover(2).jpg",
          ),
        ),
        LibraryGridItem(
          title: "Red Ranger",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000171206201601602/book_cover(2).jpg",
          ),
        ),
        LibraryGridItem(
          title: "Red Ranger",
          poster: Image.network(
            "https://img.mangamirai.com/products/BT000171206201601602/book_cover(2).jpg",
          ),
        ),
      ],
    );
  }
}
