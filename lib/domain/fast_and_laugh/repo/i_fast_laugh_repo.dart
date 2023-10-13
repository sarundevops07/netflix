import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/fast_and_laugh/model/fast_laugh_model.dart';

abstract class IFastLaughRepository {
  Future<Either<MainFailures, FastLaughModelData>> getFastLaughVideos();
}
