// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModelData _$HomeModelDataFromJson(Map<String, dynamic> json) =>
    HomeModelData(
      result: (json['results'] as List<dynamic>?)
              ?.map((e) => HomeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeModelDataToJson(HomeModelData instance) =>
    <String, dynamic>{
      'results': instance.result,
    };

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      profilePath: json['profile_path'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'profile_path': instance.profilePath,
      'poster_path': instance.posterPath,
    };
