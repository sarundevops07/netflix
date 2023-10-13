part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {stateId,
      required List<HomeModel> trendingPersons,
      required List<DownloadsModel> trendingMovies,
      required List<EveryonesWatchingModel> getTopTVShows,
      required bool isLoading,
      required bool isError}) = _Initial;

  factory HomeState.initial() => const HomeState(
        stateId: 0,
        trendingPersons: [],
        trendingMovies: [],
        getTopTVShows: [],
        isLoading: false,
        isError: false,
      );
}
