import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:mirai_it/meta.dart';
import 'package:mirai_it/pages/library.dart';
import 'package:mirai_it/pages/reader.dart';
import 'package:mirai_it/pages/settings.dart';

class PageRoute extends GoRoute {
  final IconData icon;
  final String label;

  PageRoute({
    required super.path,
    required this.icon,
    required this.label,
    required super.builder,
  });
}

final List<PageRoute> pages = [
  PageRoute(
    path: '/',
    icon: Icons.library_books,
    label: 'Library',
    builder: (context, state) => LibraryPage(),
  ),
  PageRoute(
    path: '/settings',
    icon: Icons.settings,
    label: 'Settings',
    builder: (context, state) => SettingsPage(),
  ),
];

final List<GoRoute> routes = [
  ...pages,
  GoRoute(
    path: '/reader',
    builder: (context, state) => ReaderPage(type: PageReaderType.topToBottom),
  ),
];

final List<RouteBase> _routes = [
  ShellRoute(
    routes: routes,
    builder: (context, state, child) {
      final pageIndex = pages.indexWhere(
        (route) => route.path == state.fullPath,
      );
      final PageRoute? page = pageIndex == -1 ? null : pages[pageIndex];
      return Scaffold(
        body: child,
        appBar: pageIndex != -1
            ? AppBar(
                leading: BackButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.inverseSurface,
                    ),
                    foregroundColor: WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.surface,
                    ),
                  ),
                  onPressed: router.canPop() ? () => router.pop() : null,
                ),
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                actions: [
                  FilledButton.icon(
                    onPressed: state.fullPath != "/settings"
                        ? () => router.push("/settings")
                        : null,
                    icon: Icon(Icons.settings),
                    label: Text('Settings'),
                  ),
                ],
                title: Row(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Icon(page!.icon), Text("${page.label} - MiraiIt")],
                ),
              )
            : null,
      );
    },
  ),
];
// GoRouter configuration
final router = GoRouter(routes: _routes);
