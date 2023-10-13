import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/home/models/home_model.dart';
import 'package:netflix_clone/domain/home/repo/i_home_repo.dart';
import 'package:netflix_clone/domain/new_and_hot/models/everyones_watching/everyones_watching.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository iHomeRepository;

  HomeBloc(this.iHomeRepository) : super(HomeState.initial()) {
    on<GetTrendingPersons>((event, emit) async {
      // Loading state

      emit(state.copyWith(
          isError: false,
          isLoading: true,
          stateId: DateTime.now().millisecondsSinceEpoch.toString()));

      // get data from api

      final result = await iHomeRepository.getTrendingPersons();
      // show to ui

      final trendingPersons = result.fold(
          (MainFailures failure) => state.copyWith(
              stateId: DateTime.now().millisecondsSinceEpoch.toString(),
              trendingPersons: [],
              trendingMovies: state.trendingMovies,
              getTopTVShows: state.getTopTVShows,
              isError: true,
              isLoading: false),
          (HomeModelData success) => state.copyWith(
              stateId: DateTime.now().millisecondsSinceEpoch.toString(),
              trendingPersons: success.result,
              trendingMovies: state.trendingMovies,
              getTopTVShows: state.getTopTVShows,
              isError: false,
              isLoading: false));
      emit(trendingPersons);
    });

    on<GetTrendingMovies>((event, emit) async {
      // initial state

      emit(state.copyWith(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingPersons: state.trendingPersons,
          trendingMovies: [],
          getTopTVShows: state.getTopTVShows,
          isError: false,
          isLoading: true));

      // get data from api

      final result = await iHomeRepository.getTrendingMovies();

      // show to ui

      final trendingMovies = result.fold(
          (MainFailures failure) => state.copyWith(
              stateId: DateTime.now().millisecondsSinceEpoch.toString(),
              trendingPersons: state.trendingPersons,
              trendingMovies: [],
              getTopTVShows: state.getTopTVShows,
              isError: true,
              isLoading: false),
          (success) => state.copyWith(
              stateId: DateTime.now().millisecondsSinceEpoch.toString(),
              trendingPersons: state.trendingPersons,
              trendingMovies: success,
              getTopTVShows: state.getTopTVShows,
              isError: false,
              isLoading: false));
      emit(trendingMovies);
    });

    on<GetTopTVShows>((event, emit) async {
      // Loading state

      emit(state.copyWith(
          isError: false,
          isLoading: true,
          stateId: DateTime.now().millisecondsSinceEpoch.toString()));

      // get data from api

      final result = await iHomeRepository.getTopTVShows();

      // show to ui

      final tvShows = result.fold(
          (MainFailures failure) => state.copyWith(
              stateId: DateTime.now().millisecondsSinceEpoch.toString(),
              trendingPersons: state.trendingPersons,
              trendingMovies: state.trendingMovies,
              getTopTVShows: [],
              isError: true,
              isLoading: false),
          (EveryonesWatchingData success) => state.copyWith(
              stateId: DateTime.now().millisecondsSinceEpoch.toString(),
              trendingPersons: state.trendingPersons,
              trendingMovies: state.trendingMovies,
              getTopTVShows: success.result,
              isError: false,
              isLoading: false));
      emit(tvShows);
    });
  }
}
