import 'package:dio/dio.dart';
import 'package:movie_recommend_app/src/model/movie.dart';

class ApiService {
  final Dio _dio = Dio();

  final String baseUrl = 'https://api.themoviedb.org/3';

  final String apiKey = 'b3e054c6a71767485df93c2f10dcb21c';

  Future<List<Movie>> getTopRatedMovie() async {
    try {
      final response = await _dio.get('$baseUrl/movie_now_playing?$apiKey');
    } catch (error, stacktrace) {
      throw Exception('Exception Occured: $error with stactrace $stacktrace');
    }
  }
}
