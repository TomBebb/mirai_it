import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => SettingsState();
}

class SettingsState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
        body: const TabBarView(
          children: [
            Text("TODO: Appearance"),
            Text('TODO: Library'),
            Text('TODO: Reader'),
          ],
        ),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.view_column_outlined), text: 'Appearance'),
              Tab(icon: Icon(Icons.library_books), text: 'Library'),
              Tab(icon: Icon(Icons.book), text: 'Reader'),
            ],
          ),
        ),
      ),
    );
  }
}
