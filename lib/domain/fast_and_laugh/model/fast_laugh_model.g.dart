// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fast_laugh_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FastLaughModelData _$FastLaughModelDataFromJson(Map<String, dynamic> json) =>
    FastLaughModelData(
      result: (json['results'] as List<dynamic>?)
              ?.map((e) => FastLaughModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FastLaughModelDataToJson(FastLaughModelData instance) =>
    <String, dynamic>{
      'results': instance.result,
    };

FastLaughModel _$FastLaughModelFromJson(Map<String, dynamic> json) =>
    FastLaughModel(
      videoKey: json['key'] as String,
    );

Map<String, dynamic> _$FastLaughModelToJson(FastLaughModel instance) =>
    <String, dynamic>{
      'key': instance.videoKey,
    };
