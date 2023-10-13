part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultsModel> searchResultsModel,
    required List<DownloadsModel> idleList,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
      searchResultsModel: [], idleList: [], isLoading: false, isError: false);
}
