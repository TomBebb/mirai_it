import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:mirai_it/pages/home.dart';
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
    icon: Icons.home,
    label: 'Home',
    builder: (context, state) => MyHomePage(title: "TODO"),
  ),
  PageRoute(
    path: '/purchased',
    icon: Icons.shop,
    label: 'Purchased',
    builder: (context, state) => MyHomePage(title: "TODO"),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
