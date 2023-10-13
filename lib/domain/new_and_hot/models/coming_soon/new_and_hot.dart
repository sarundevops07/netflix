import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/domain/core/const.dart';

part 'new_and_hot.g.dart';

@JsonSerializable()
class ComingSoonModelData {
  @JsonKey(name: 'results')
  List<ComingSoonModel> result;
  ComingSoonModelData({
    this.result = const [],
  });

  factory ComingSoonModelData.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonModelDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonModelDataToJson(this);
}

@JsonSerializable()
class ComingSoonModel {
  @JsonKey(name: "original_title")
  final String title;

  @JsonKey(name: "poster_path")
  final String posterPath;

  @JsonKey(name: "release_date")
  final String releaseDate;

  @JsonKey(name: "overview")
  final String discription;

  String get posterPathUrl => "$imageAppendUrl$posterPath";

  ComingSoonModel({
    required this.title,
    required this.posterPath,
    required this.releaseDate,
    required this.discription,
  });
  factory ComingSoonModel.fromJson(Map<String, dynamic> json) =>
      _$ComingSoonModelFromJson(json);

  Map<String, dynamic> toJson() => _$ComingSoonModelToJson(this);
}
