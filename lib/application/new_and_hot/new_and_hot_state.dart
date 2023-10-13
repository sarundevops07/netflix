part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState(
      {required List<ComingSoonModel> comingSoon,
      required List<EveryonesWatchingModel> everyOnesWatching,
      required bool isLoading,
      required bool isError}) = _Initial;

  factory NewAndHotState.initial() => const NewAndHotState(
      comingSoon: [], isLoading: false, isError: false, everyOnesWatching: []);
}
