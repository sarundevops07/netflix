import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/downloads/repo/i_downdloads_repo.dart';
import 'package:netflix_clone/domain/search/models/search_models.dart';
import 'package:netflix_clone/domain/search/repo/i_search_repo.dart';
part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepository iSearchRepository;
  final IDownloadsRepository iDownloadsRepository;
  SearchBloc(this.iSearchRepository, this.iDownloadsRepository)
      : super(SearchState.initial()) {
// idle state

    on<Initialize>((event, emit) async {
      // get trending
      if (state.idleList.isNotEmpty) {
        emit(state);
        return;
      }
      emit(SearchState(
          // initial state
          searchResultsModel: [],
          idleList: state.idleList,
          isLoading: true,
          isError: false));

      final result = await iDownloadsRepository.getDownloadsImages();

      final searchState = result.fold(
          (failure) => const SearchState(
              // failure state
              searchResultsModel: [],
              idleList: [],
              isLoading: false,
              isError: true),
          (success) => SearchState(
              // success state
              searchResultsModel: [],
              idleList: success,
              isLoading: false,
              isError: false));
      emit(searchState);
    });

// search result state

    on<SearchMovie>((event, emit) async {
      // initial state

      emit(state.copyWith(
          idleList: [],
          isError: false,
          isLoading: true,
          searchResultsModel: []));

      // call search movie api

      final results =
          await iSearchRepository.searchResults(movieQuery: event.movieQuery);

      //show to ui

      final searchState = results.fold(
          (failure) => state.copyWith(
              idleList: [],
              isError: true,
              isLoading: false,
              searchResultsModel: []),
          (success) => state.copyWith(
              idleList: [],
              isError: false,
              isLoading: false,
              searchResultsModel: success.result));
      emit(searchState);
    });
  }
}
