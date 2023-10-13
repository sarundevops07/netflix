import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_faliures.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/downloads/repo/i_downdloads_repo.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepository _iDownloadsRepository;
  DownloadsBloc(
    this._iDownloadsRepository,
  ) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureOrSucessOption: none(),
        ),
      );
      final downloadsOption = await _iDownloadsRepository.getDownloadsImages();

      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsFailureOrSucessOption: some(Left(failure)),
          ),
          (success) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSucessOption: some(Right(success)),
              downloads: success),
        ),
      );
    });
  }
}
