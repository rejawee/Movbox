
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MovieBoxProApp());
}

class MovieBoxProApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieBox Pro',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
