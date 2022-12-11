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
  final String poster_path;

  String error;

  Movie({
    this.backdrop_path,
    this.error,
    this.originalLanguage,
    this.id,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.poster_path,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory Movie.fromJson(dynamic json) {
    if (json == null) {
      return Movie();
    }
    return Movie(
      backdrop_path: json['backdrop_path'],
      id: json['id'],
      originalLanguage: json['originalLanguage'],
      originalTitle: json['originalTitle'],
      overview: json['overview'],
      popularity: json['populrity'],
      poster_path: json['poster_path'],
      releaseDate: json['releaseDate'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['voteAverage'],
      voteCount: json['voteCount'],
    );
  }
}
