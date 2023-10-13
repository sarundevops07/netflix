import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/home/models/home_model.dart';
import 'package:netflix_clone/domain/home/repo/i_home_repo.dart';
import 'package:netflix_clone/domain/new_and_hot/models/everyones_watching/everyones_watching.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  // to get Trending Movies

  @override
  Future<Either<MainFailures, List<DownloadsModel>>> getTrendingMovies() async {
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
      log(e.toString());
      return left(const MainFailures.clientFailures());
    }
  }

  // to get get Trending Persons

  @override
  Future<Either<MainFailures, HomeModelData>> getTrendingPersons() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingPersonsUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModelData.fromJson(response.data);

        return right(result);
      } else {
        return left(const MainFailures.serverFailures());
      }
    } on DioException catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailures());
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, EveryonesWatchingData>> getTopTVShows() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.everyonesWatchingUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = EveryonesWatchingData.fromJson(response.data);

        return right(result);
      } else {
        return left(const MainFailures.serverFailures());
      }
    } on DioException catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailures());
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailures());
    }
  }
}
