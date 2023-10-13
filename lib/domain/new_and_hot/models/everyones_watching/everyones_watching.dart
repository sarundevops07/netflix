import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/domain/core/const.dart';

part 'everyones_watching.g.dart';

@JsonSerializable()
class EveryonesWatchingData {
  @JsonKey(name: 'results')
  List<EveryonesWatchingModel> result;
  EveryonesWatchingData({
    this.result = const [],
  });

  factory EveryonesWatchingData.fromJson(Map<String, dynamic> json) {
    return _$EveryonesWatchingDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryonesWatchingDataToJson(this);
}

@JsonSerializable()
class EveryonesWatchingModel {
  @JsonKey(name: "name")
  final String? title;

  @JsonKey(name: "poster_path")
  final String? posterPath;

  @JsonKey(name: "first_air_date")
  final String? releaseDate;

  @JsonKey(name: "overview")
  final String? discription;

  @JsonKey(name: "id")
  final int? id;

  String get posterPathUrl => "$imageAppendUrl$posterPath";

  EveryonesWatchingModel({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.releaseDate,
    required this.discription,
  });
  factory EveryonesWatchingModel.fromJson(Map<String, dynamic> json) =>
      _$EveryonesWatchingModelFromJson(json);

  Map<String, dynamic> toJson() => _$EveryonesWatchingModelToJson(this);
}
