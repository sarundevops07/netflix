part of 'fast_laughs_bloc.dart';

@freezed
class FastLaughsEvent with _$FastLaughsEvent {
  const factory FastLaughsEvent.getDownloadsImages() = GetDownloadsImages;
  const factory FastLaughsEvent.getFastLaughVideos() = GetFastLaughVideos;
}
