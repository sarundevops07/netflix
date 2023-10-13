// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_and_hot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComingSoonModelData _$ComingSoonModelDataFromJson(Map<String, dynamic> json) =>
    ComingSoonModelData(
      result: (json['results'] as List<dynamic>?)
              ?.map((e) => ComingSoonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ComingSoonModelDataToJson(
        ComingSoonModelData instance) =>
    <String, dynamic>{
      'results': instance.result,
    };

ComingSoonModel _$ComingSoonModelFromJson(Map<String, dynamic> json) =>
    ComingSoonModel(
      title: json['original_title'] as String,
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      discription: json['overview'] as String,
    );

Map<String, dynamic> _$ComingSoonModelToJson(ComingSoonModel instance) =>
    <String, dynamic>{
      'original_title': instance.title,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'overview': instance.discription,
    };
