import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/downloads/repo/i_downdloads_repo.dart';
import 'package:netflix_clone/domain/fast_and_laugh/model/fast_laugh_model.dart';
import 'package:netflix_clone/domain/fast_and_laugh/repo/i_fast_laugh_repo.dart';

part 'fast_laughs_event.dart';
part 'fast_laughs_state.dart';
part 'fast_laughs_bloc.freezed.dart';

@injectable
class FastLaughsBloc extends Bloc<FastLaughsEvent, FastLaughsState> {
  final IDownloadsRepository _iDownloadsRepository;
  final IFastLaughRepository _fastLaughRepository;
  FastLaughsBloc(this._iDownloadsRepository, this._fastLaughRepository)
      : super(FastLaughsState.initial()) {
    // DP

    on<GetDownloadsImages>((event, emit) async {
      // Loading state

      emit(state.copyWith(
        isError: false,
        isLoading: true,
      ));

      // get images from api

      final result = await _iDownloadsRepository.getDownloadsImages();

      // show to ui

      final imageList = result.fold(
          (MainFailures failures) =>
              state.copyWith(isError: true, isLoading: false, dpImage: []),
          (List<DownloadsModel> success) => state.copyWith(
              isError: false, isLoading: false, dpImage: success));
      emit(imageList);
    });

    // VIDEOS

    on<GetFastLaughVideos>((event, emit) async {
      // Loading state

      emit(state.copyWith(
        isError: false,
        isLoading: true,
      ));

      // get videos from api

      final result = await _fastLaughRepository.getFastLaughVideos();

      // show to ui
      final videos = result.fold(
          (MainFailures failures) => FastLaughsState(
              isLoading: false,
              isError: true,
              dpImage: state.dpImage,
              videoList: []),
          (FastLaughModelData success) => FastLaughsState(
              isLoading: false,
              isError: false,
              dpImage: state.dpImage,
              videoList: success.result));
      emit(videos);
    });
  }
}
