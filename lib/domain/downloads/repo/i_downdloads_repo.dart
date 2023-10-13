import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepository {
  Future<Either<MainFailures, List<DownloadsModel>>> getDownloadsImages();
}
