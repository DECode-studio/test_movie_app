import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../model/movie.dart';

class MovieDataController {
  final client = http.Client();

  Future<MovieModel> getMovie() async {
    try {
      var response = await client.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/157336/videos?api_key=5f64f923470c28059a9953b36ea3c9fe'),
      );

      var result = json.decode(response.body);
      var data = MovieModel.fromJson(result);

      return data;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }

      return MovieModel();
    }
  }
}
