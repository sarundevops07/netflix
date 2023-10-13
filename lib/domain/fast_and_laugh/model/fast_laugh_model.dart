// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/domain/core/const.dart';

part 'fast_laugh_model.g.dart';

@JsonSerializable()
class FastLaughModelData {
  @JsonKey(name: 'results')
  List<FastLaughModel> result;

  FastLaughModelData({
    this.result = const [],
  });

  factory FastLaughModelData.fromJson(Map<String, dynamic> json) {
    return _$FastLaughModelDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FastLaughModelDataToJson(this);
}

@JsonSerializable()
class FastLaughModel {
  @JsonKey(name: 'key')
  String videoKey;

  String get videokeyUrl => "$videoAppendUrl$videoKey";

  FastLaughModel({
    required this.videoKey,
  });

  factory FastLaughModel.fromJson(Map<String, dynamic> json) {
    return _$FastLaughModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FastLaughModelToJson(this);
}
