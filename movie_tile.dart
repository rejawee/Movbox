
import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../screens/movie_detail_screen.dart';

class MovieTile extends StatelessWidget {
  final Movie movie;

  MovieTile({required this.movie});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(movie.thumbnail, width: 60, fit: BoxFit.cover),
      title: Text(movie.title),
      subtitle: Text(movie.description),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => MovieDetailScreen(movie: movie),
          ),
        );
      },
    );
  }
}
