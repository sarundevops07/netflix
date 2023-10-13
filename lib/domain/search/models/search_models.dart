// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/domain/core/const.dart';

part 'search_models.g.dart';

@JsonSerializable()
class SearchModel {
  @JsonKey(name: 'results')
  List<SearchResultsModel> result;
  SearchModel({
    this.result = const [],
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}

@JsonSerializable()
class SearchResultsModel {
  @JsonKey(name: "_id")
  String? id;

  @JsonKey(name: "original_title")
  String? orginalTitle;

  @JsonKey(name: "poster_path")
  String? posterPath;

  String get posterPathUrl => "$imageAppendUrl$posterPath";

  SearchResultsModel({this.id, this.orginalTitle, this.posterPath});
  factory SearchResultsModel.fromJson(Map<String, dynamic> json) {
    return _$SearchResultsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultsModelToJson(this);
}
