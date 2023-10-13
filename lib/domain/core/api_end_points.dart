import 'package:netflix_clone/domain/core/const.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloadsUrl = "$baseUrl/trending/all/day?api_key=$apiKey";
  static const searchUrl = "$baseUrl/search/movie?api_key=$apiKey";
  static const commingSoonUrl = "$baseUrl/movie/upcoming?api_key=$apiKey";
  static const everyonesWatchingUrl = "$baseUrl/discover/tv?api_key=$apiKey";
  static const trendingPersonsUrl =
      "$baseUrl/trending/person/day?api_key=$apiKey";
  static const popularityUrl = "$baseUrl/person/popular?api_key=$apiKey";
  static const videoUrl = "$baseUrl/movie/976573/videos?api_key=$apiKey";
}

const s =
    "https://api.themoviedb.org/3/movie/976573/videos?api_key=506cb30838b6e886b1f2f25d56a8439e";
