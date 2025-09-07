import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path/path.dart' as path;

final dio = Dio();

Future<void> login() async {}

Future<void> prepareCookieManager() async {
  final dir = await getApplicationSupportDirectory();
  print(dir);
  final cookieJar = PersistCookieJar(
    ignoreExpires: true,
    storage: FileStorage(path.join(dir.path, "/.cookies/")),
  );
  dio.interceptors.add(CookieManager(cookieJar));
}

final Map<String, String> headers = {};

Future<Document> getHtml(String uri) async {
  final response = await dio.get(uri);
  print(response.statusCode);
  final text = response.data.toString();
  return parse(text, encoding: 'UTF8');
}

class MangaImageResult {
  final int width;
  final int height;
  final String position;
  final String url;

  MangaImageResult({
    required this.width,
    required this.height,
    required this.position,
    required this.url,
  });

  static MangaImageResult fromJson(dynamic json) {
    return MangaImageResult(
      width: json['width'],
      height: json['height'],
      position: json['position'],
      url: json['url'],
    );
  }
}

Future<List<MangaImageResult>> getPages(String uuid) async {
  final url =
      'https://mangamirai.com/users/product_contents/$uuid/product_content_images?start_page=1&limit=99999';

  final resp = await dio.get(
    url,
    options: Options(contentType: "application/json"),
  );
  return [];
}
