part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getTrendingPersons() = GetTrendingPersons;
  const factory HomeEvent.getTrendingMovies() = GetTrendingMovies;
  const factory HomeEvent.getTopTVShows() = GetTopTVShows;
}
