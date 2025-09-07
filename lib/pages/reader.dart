import 'package:flutter/material.dart';

class ReaderPage extends StatefulWidget {
  @override
  State<ReaderPage> createState() => _ReaderState();
}

class _ReaderState extends State<ReaderPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("TODO: Reader");
  }
}
