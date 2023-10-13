// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everyones_watching.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryonesWatchingData _$EveryonesWatchingDataFromJson(
        Map<String, dynamic> json) =>
    EveryonesWatchingData(
      result: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  EveryonesWatchingModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EveryonesWatchingDataToJson(
        EveryonesWatchingData instance) =>
    <String, dynamic>{
      'results': instance.result,
    };

EveryonesWatchingModel _$EveryonesWatchingModelFromJson(
        Map<String, dynamic> json) =>
    EveryonesWatchingModel(
      id: json['id'] as int?,
      title: json['name'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['first_air_date'] as String?,
      discription: json['overview'] as String?,
    );

Map<String, dynamic> _$EveryonesWatchingModelToJson(
        EveryonesWatchingModel instance) =>
    <String, dynamic>{
      'name': instance.title,
      'poster_path': instance.posterPath,
      'first_air_date': instance.releaseDate,
      'overview': instance.discription,
      'id': instance.id,
    };
