import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/fast_and_laugh/model/fast_laugh_model.dart';
import 'package:netflix_clone/domain/fast_and_laugh/repo/i_fast_laugh_repo.dart';

@LazySingleton(as: IFastLaughRepository)
class FastLaughRepositories implements IFastLaughRepository {
  @override
  Future<Either<MainFailures, FastLaughModelData>> getFastLaughVideos() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.videoUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = FastLaughModelData.fromJson(response.data);
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
