part of 'fast_laughs_bloc.dart';

@freezed
class FastLaughsState with _$FastLaughsState {
  const factory FastLaughsState(
      {required bool isLoading,
      required bool isError,
      required List<DownloadsModel> dpImage,
      required List<FastLaughModel> videoList}) = Initial;

  factory FastLaughsState.initial() => const FastLaughsState(
      isError: false, isLoading: true, dpImage: [], videoList: []);
}
