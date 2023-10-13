import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/new_and_hot/models/everyones_watching/everyones_watching.dart';
import 'package:netflix_clone/domain/new_and_hot/models/coming_soon/new_and_hot.dart';
import 'package:netflix_clone/domain/new_and_hot/repo/i_new_and_hot_repo.dart';

@LazySingleton(as: INewAndHotRepository)
class NewAndHotRepository implements INewAndHotRepository {
  @override
  Future<Either<MainFailures, ComingSoonModelData>> getUpcomingMovies() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.commingSoonUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ComingSoonModelData.fromJson(response.data);
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
  Future<Either<MainFailures, EveryonesWatchingData>>
      getEveryonesWatching() async {
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
