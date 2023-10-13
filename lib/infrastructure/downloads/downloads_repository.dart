import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/downloads/repo/i_downdloads_repo.dart';

@LazySingleton(as: IDownloadsRepository)
class DownloadsRepository implements IDownloadsRepository {
  @override
  Future<Either<MainFailures, List<DownloadsModel>>>
      getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloadsUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = (response.data["results"] as List);

        final downloadsList = result
            .map((eachElementsInList) =>
                DownloadsModel.fromJson(eachElementsInList))
            .toList();

        return Right(downloadsList);
      } else {
        return left(const MainFailures.serverFailures());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const MainFailures.clientFailures());
    }
  }
}

















// final Response response = await dio.get(ApiEndPoints.downloadsUrl);