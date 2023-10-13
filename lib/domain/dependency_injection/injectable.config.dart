// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix_clone/application/downloads/downloads_bloc.dart'
    as _i15;
import 'package:netflix_clone/application/fast_laughs/fast_laughs_bloc.dart'
    as _i16;
import 'package:netflix_clone/application/home/home_bloc.dart' as _i17;
import 'package:netflix_clone/application/new_and_hot/new_and_hot_bloc.dart'
    as _i13;
import 'package:netflix_clone/application/search/search_bloc.dart' as _i14;
import 'package:netflix_clone/domain/downloads/repo/i_downdloads_repo.dart'
    as _i3;
import 'package:netflix_clone/domain/fast_and_laugh/repo/i_fast_laugh_repo.dart'
    as _i5;
import 'package:netflix_clone/domain/home/repo/i_home_repo.dart' as _i7;
import 'package:netflix_clone/domain/new_and_hot/repo/i_new_and_hot_repo.dart'
    as _i9;
import 'package:netflix_clone/domain/search/repo/i_search_repo.dart' as _i11;
import 'package:netflix_clone/infrastructure/downloads/downloads_repository.dart'
    as _i4;
import 'package:netflix_clone/infrastructure/fast_and_laugh/fast_laugh_repository.dart'
    as _i6;
import 'package:netflix_clone/infrastructure/home/home_repository.dart' as _i8;
import 'package:netflix_clone/infrastructure/new_and_hot/new_and_hot_repository.dart'
    as _i10;
import 'package:netflix_clone/infrastructure/search/search_repository.dart'
    as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadsRepository>(() => _i4.DownloadsRepository());
    gh.lazySingleton<_i5.IFastLaughRepository>(
        () => _i6.FastLaughRepositories());
    gh.lazySingleton<_i7.IHomeRepository>(() => _i8.HomeRepository());
    gh.lazySingleton<_i9.INewAndHotRepository>(
        () => _i10.NewAndHotRepository());
    gh.lazySingleton<_i11.ISearchRepository>(() => _i12.SearchRepository());
    gh.factory<_i13.NewAndHotBloc>(
        () => _i13.NewAndHotBloc(gh<_i9.INewAndHotRepository>()));
    gh.factory<_i14.SearchBloc>(() => _i14.SearchBloc(
          gh<_i11.ISearchRepository>(),
          gh<_i3.IDownloadsRepository>(),
        ));
    gh.factory<_i15.DownloadsBloc>(
        () => _i15.DownloadsBloc(gh<_i3.IDownloadsRepository>()));
    gh.factory<_i16.FastLaughsBloc>(() => _i16.FastLaughsBloc(
          gh<_i3.IDownloadsRepository>(),
          gh<_i5.IFastLaughRepository>(),
        ));
    gh.factory<_i17.HomeBloc>(() => _i17.HomeBloc(gh<_i7.IHomeRepository>()));
    return this;
  }
}
