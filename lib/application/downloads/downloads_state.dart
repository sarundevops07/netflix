part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState(
      {required bool isLoading,
      required List<DownloadsModel> downloads,
      required Option<Either<MainFailures, List<DownloadsModel>>>
          downloadsFailureOrSucessOption}) = _DownloadsState;
  factory DownloadsState.initial() => 
  const DownloadsState(
      isLoading: false,
      downloadsFailureOrSucessOption: None(), 
      downloads: []
    );
}
