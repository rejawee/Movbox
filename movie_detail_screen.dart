
import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import '../models/movie.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      movie.streamUrl,
      liveStream: true,
    );

    BetterPlayerController controller = BetterPlayerController(
      BetterPlayerConfiguration(
        aspectRatio: 16 / 9,
        autoPlay: true,
        controlsConfiguration: BetterPlayerControlsConfiguration(enableFullscreen: true),
      ),
      betterPlayerDataSource: dataSource,
    );

    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(controller: controller),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(movie.description),
          ),
        ],
      ),
    );
  }
}
