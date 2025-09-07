import 'package:flutter/material.dart';
import 'package:mirai_it/api/api.dart';
import 'package:mirai_it/routes.dart';

void main() async {
  await prepareCookieManager();
  await getHtml("https://mangamirai.com/users/read_product_collections");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'MiraiIt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
