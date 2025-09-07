import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:mirai_it/pages/library.dart';
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
final List<GoRoute> routes = [...pages];

final List<RouteBase> _routes = [
  ShellRoute(
    routes: routes,
    builder: (context, state, child) => Scaffold(
      body: child,
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.pop()),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          FilledButton.icon(
            onPressed: () => print("Show settings"),
            icon: Icon(Icons.settings),
            label: Text('Settings'),
          ),
        ],
        title: Text(
          "${pages.firstWhere((PageRoute page) => page.path == state.uri.path).label} - MiraiIt",
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => context.go(pages[index].path),
        currentIndex: pages.indexWhere(
          (PageRoute page) => page.path == state.uri.path,
        ),
        items: pages
            .map(
              (page) => BottomNavigationBarItem(
                icon: Icon(page.icon),
                label: page.label,
              ),
            )
            .toList(),
      ),
    ),
  ),
];
// GoRouter configuration
final router = GoRouter(routes: _routes);
