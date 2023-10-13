import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/home/models/home_model.dart';
import 'package:netflix_clone/domain/new_and_hot/models/everyones_watching/everyones_watching.dart';

abstract class IHomeRepository {
  Future<Either<MainFailures, HomeModelData>> getTrendingPersons();

  Future<Either<MainFailures, List<DownloadsModel>>> getTrendingMovies();

  Future<Either<MainFailures, EveryonesWatchingData>> getTopTVShows();
}
