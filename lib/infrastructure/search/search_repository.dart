import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/search/models/search_models.dart';
import 'package:netflix_clone/domain/search/repo/i_search_repo.dart';

@LazySingleton(as: ISearchRepository)
class SearchRepository implements ISearchRepository {
  @override
  Future<Either<MainFailures, SearchModel>> searchResults(
      {required String movieQuery}) async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.searchUrl, queryParameters: {'query': movieQuery});

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchModel.fromJson(response.data);

        return right(result);
      } else {
        return left(const MainFailures.serverFailures());
      }
    } on DioException catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailures());
    } catch (e) {
      debugPrint(e.toString());
      return left(const MainFailures.clientFailures());
    }
  }
}
