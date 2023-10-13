import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/domain/core/const.dart';
part 'downloads.g.dart';

@JsonSerializable()
class DownloadsModel {
  @JsonKey(name: "poster_path")
  String? posterPath;
  @JsonKey(name: "title")
  String? title;
  String get posterPathUrl => "$imageAppendUrl$posterPath";
  DownloadsModel({
    required this.posterPath,
    required this.title,
  });

  factory DownloadsModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadsModelFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadsModelToJson(this);
}
