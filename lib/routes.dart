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
    builder: (context, state) => LibraryPage(title: "TODO: Library"),
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
    builder: (context, state, child) => Scaffold(
      body: child,
      appBar: AppBar(
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
          children: [
            Icon(
              pages
                  .firstWhere((PageRoute page) => page.path == state.uri.path)
                  .icon,
            ),
            Text(
              "${pages.firstWhere((PageRoute page) => page.path == state.uri.path).label} - MiraiIt",
            ),
          ],
        ),
      ),
    ),
  ),
];
// GoRouter configuration
final router = GoRouter(routes: _routes);
