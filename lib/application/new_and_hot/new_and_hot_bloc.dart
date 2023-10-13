import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/new_and_hot/models/everyones_watching/everyones_watching.dart';
import 'package:netflix_clone/domain/new_and_hot/models/coming_soon/new_and_hot.dart';
import 'package:netflix_clone/domain/new_and_hot/repo/i_new_and_hot_repo.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final INewAndHotRepository iNewAndHotRepository;
  NewAndHotBloc(this.iNewAndHotRepository) : super(NewAndHotState.initial()) {
// Comming soon

    on<GetComingMovies>((event, emit) async {
      // initial state
      emit(state.copyWith(
          comingSoon: [],
          isError: false,
          isLoading: true,
          everyOnesWatching: state.everyOnesWatching));

      // get upcoming movie data from api

      final result = await iNewAndHotRepository.getUpcomingMovies();

      // show to ui

      final comingSoonData = result.fold(
          (MainFailures failures) => state.copyWith(
              comingSoon: [],
              isError: true,
              isLoading: false,
              everyOnesWatching: state.everyOnesWatching),
          (success) => state.copyWith(
              comingSoon: success.result,
              isError: false,
              isLoading: false,
              everyOnesWatching: state.everyOnesWatching));
      emit(comingSoonData);
    });

// Everyones'watching

    on<GetEveryonesWatching>((event, emit) async {
      // initial state
      emit(state.copyWith(
          comingSoon: state.comingSoon,
          everyOnesWatching: [],
          isError: false,
          isLoading: true));

      // get upcoming movie data from api

      final result = await iNewAndHotRepository.getEveryonesWatching();

      // show to ui

      final everyOnesData = result.fold(
          (MainFailures failures) => state.copyWith(
              comingSoon: state.comingSoon,
              isError: true,
              isLoading: false,
              everyOnesWatching: []),
          (success) => state.copyWith(
              comingSoon: state.comingSoon,
              isError: false,
              isLoading: false,
              everyOnesWatching: success.result));
      emit(everyOnesData);
    });
  }
}
