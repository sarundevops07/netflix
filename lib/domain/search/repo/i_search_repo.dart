import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/search/models/search_models.dart';

abstract class ISearchRepository {
  Future<Either<MainFailures, SearchModel>> searchResults(
      {required String movieQuery});
}
