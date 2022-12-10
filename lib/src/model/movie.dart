import 'package:flutter/foundation.dart';

class Movie {
  final String backdrop_path;
  final int id;
  final String originalLanguage;
  final String overview;
  final String originalTitle;
  final String releaseDate;
  final double popularity;
  final String title;
  final bool video;
  final int voteCount;
  final String voteAverage;
  final String posterPath;

  String error;

  Movie({
    required this.backdrop_path,
    required this.error,
    required this.originalLanguage,
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory Movie.fromJson(dynamic json) {
    if (json == null) {
      return Movie();
    }
    return Movie(backdrop_path: json['backdrop_path'])
  }
}
