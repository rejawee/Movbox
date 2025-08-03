
import 'package:flutter/material.dart';
import '../data/movies_data.dart';
import '../widgets/movie_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MovieBox Pro')),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieTile(movie: movies[index]);
        },
      ),
    );
  }
}
