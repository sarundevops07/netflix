import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/domain/core/const.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModelData {
  @JsonKey(name: 'results')
  List<HomeModel> result;

  HomeModelData({
    this.result = const [],
  });

  factory HomeModelData.fromJson(Map<String, dynamic> json) {
    return _$HomeModelDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeModelDataToJson(this);
}

@JsonSerializable()
class HomeModel {
  @JsonKey(name: "profile_path")
  String? profilePath;

  @JsonKey(name: "poster_path")
  String? posterPath;

  String get profilePathUrl => "$imageAppendUrl$profilePath";

  String get posterPathUrl => "$imageAppendUrl$posterPath";

  HomeModel({
    required this.profilePath,
    required this.posterPath,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
