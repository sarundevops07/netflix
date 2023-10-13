import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/new_and_hot/models/everyones_watching/everyones_watching.dart';
import 'package:netflix_clone/domain/new_and_hot/models/coming_soon/new_and_hot.dart';

abstract class INewAndHotRepository {
  Future<Either<MainFailures, ComingSoonModelData>> getUpcomingMovies();
  Future<Either<MainFailures, EveryonesWatchingData>> getEveryonesWatching();
}
