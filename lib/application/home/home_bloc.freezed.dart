// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingPersons,
    required TResult Function() getTrendingMovies,
    required TResult Function() getTopTVShows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingPersons,
    TResult? Function()? getTrendingMovies,
    TResult? Function()? getTopTVShows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingPersons,
    TResult Function()? getTrendingMovies,
    TResult Function()? getTopTVShows,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingPersons value) getTrendingPersons,
    required TResult Function(GetTrendingMovies value) getTrendingMovies,
    required TResult Function(GetTopTVShows value) getTopTVShows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingPersons value)? getTrendingPersons,
    TResult? Function(GetTrendingMovies value)? getTrendingMovies,
    TResult? Function(GetTopTVShows value)? getTopTVShows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingPersons value)? getTrendingPersons,
    TResult Function(GetTrendingMovies value)? getTrendingMovies,
    TResult Function(GetTopTVShows value)? getTopTVShows,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTrendingPersonsCopyWith<$Res> {
  factory _$$GetTrendingPersonsCopyWith(_$GetTrendingPersons value,
          $Res Function(_$GetTrendingPersons) then) =
      __$$GetTrendingPersonsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrendingPersonsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTrendingPersons>
    implements _$$GetTrendingPersonsCopyWith<$Res> {
  __$$GetTrendingPersonsCopyWithImpl(
      _$GetTrendingPersons _value, $Res Function(_$GetTrendingPersons) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTrendingPersons implements GetTrendingPersons {
  const _$GetTrendingPersons();

  @override
  String toString() {
    return 'HomeEvent.getTrendingPersons()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTrendingPersons);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingPersons,
    required TResult Function() getTrendingMovies,
    required TResult Function() getTopTVShows,
  }) {
    return getTrendingPersons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingPersons,
    TResult? Function()? getTrendingMovies,
    TResult? Function()? getTopTVShows,
  }) {
    return getTrendingPersons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingPersons,
    TResult Function()? getTrendingMovies,
    TResult Function()? getTopTVShows,
    required TResult orElse(),
  }) {
    if (getTrendingPersons != null) {
      return getTrendingPersons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingPersons value) getTrendingPersons,
    required TResult Function(GetTrendingMovies value) getTrendingMovies,
    required TResult Function(GetTopTVShows value) getTopTVShows,
  }) {
    return getTrendingPersons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingPersons value)? getTrendingPersons,
    TResult? Function(GetTrendingMovies value)? getTrendingMovies,
    TResult? Function(GetTopTVShows value)? getTopTVShows,
  }) {
    return getTrendingPersons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingPersons value)? getTrendingPersons,
    TResult Function(GetTrendingMovies value)? getTrendingMovies,
    TResult Function(GetTopTVShows value)? getTopTVShows,
    required TResult orElse(),
  }) {
    if (getTrendingPersons != null) {
      return getTrendingPersons(this);
    }
    return orElse();
  }
}

abstract class GetTrendingPersons implements HomeEvent {
  const factory GetTrendingPersons() = _$GetTrendingPersons;
}

/// @nodoc
abstract class _$$GetTrendingMoviesCopyWith<$Res> {
  factory _$$GetTrendingMoviesCopyWith(
          _$GetTrendingMovies value, $Res Function(_$GetTrendingMovies) then) =
      __$$GetTrendingMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrendingMoviesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTrendingMovies>
    implements _$$GetTrendingMoviesCopyWith<$Res> {
  __$$GetTrendingMoviesCopyWithImpl(
      _$GetTrendingMovies _value, $Res Function(_$GetTrendingMovies) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTrendingMovies implements GetTrendingMovies {
  const _$GetTrendingMovies();

  @override
  String toString() {
    return 'HomeEvent.getTrendingMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTrendingMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingPersons,
    required TResult Function() getTrendingMovies,
    required TResult Function() getTopTVShows,
  }) {
    return getTrendingMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingPersons,
    TResult? Function()? getTrendingMovies,
    TResult? Function()? getTopTVShows,
  }) {
    return getTrendingMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingPersons,
    TResult Function()? getTrendingMovies,
    TResult Function()? getTopTVShows,
    required TResult orElse(),
  }) {
    if (getTrendingMovies != null) {
      return getTrendingMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingPersons value) getTrendingPersons,
    required TResult Function(GetTrendingMovies value) getTrendingMovies,
    required TResult Function(GetTopTVShows value) getTopTVShows,
  }) {
    return getTrendingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingPersons value)? getTrendingPersons,
    TResult? Function(GetTrendingMovies value)? getTrendingMovies,
    TResult? Function(GetTopTVShows value)? getTopTVShows,
  }) {
    return getTrendingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingPersons value)? getTrendingPersons,
    TResult Function(GetTrendingMovies value)? getTrendingMovies,
    TResult Function(GetTopTVShows value)? getTopTVShows,
    required TResult orElse(),
  }) {
    if (getTrendingMovies != null) {
      return getTrendingMovies(this);
    }
    return orElse();
  }
}

abstract class GetTrendingMovies implements HomeEvent {
  const factory GetTrendingMovies() = _$GetTrendingMovies;
}

/// @nodoc
abstract class _$$GetTopTVShowsCopyWith<$Res> {
  factory _$$GetTopTVShowsCopyWith(
          _$GetTopTVShows value, $Res Function(_$GetTopTVShows) then) =
      __$$GetTopTVShowsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTopTVShowsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTopTVShows>
    implements _$$GetTopTVShowsCopyWith<$Res> {
  __$$GetTopTVShowsCopyWithImpl(
      _$GetTopTVShows _value, $Res Function(_$GetTopTVShows) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTopTVShows implements GetTopTVShows {
  const _$GetTopTVShows();

  @override
  String toString() {
    return 'HomeEvent.getTopTVShows()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTopTVShows);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingPersons,
    required TResult Function() getTrendingMovies,
    required TResult Function() getTopTVShows,
  }) {
    return getTopTVShows();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingPersons,
    TResult? Function()? getTrendingMovies,
    TResult? Function()? getTopTVShows,
  }) {
    return getTopTVShows?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingPersons,
    TResult Function()? getTrendingMovies,
    TResult Function()? getTopTVShows,
    required TResult orElse(),
  }) {
    if (getTopTVShows != null) {
      return getTopTVShows();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingPersons value) getTrendingPersons,
    required TResult Function(GetTrendingMovies value) getTrendingMovies,
    required TResult Function(GetTopTVShows value) getTopTVShows,
  }) {
    return getTopTVShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingPersons value)? getTrendingPersons,
    TResult? Function(GetTrendingMovies value)? getTrendingMovies,
    TResult? Function(GetTopTVShows value)? getTopTVShows,
  }) {
    return getTopTVShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingPersons value)? getTrendingPersons,
    TResult Function(GetTrendingMovies value)? getTrendingMovies,
    TResult Function(GetTopTVShows value)? getTopTVShows,
    required TResult orElse(),
  }) {
    if (getTopTVShows != null) {
      return getTopTVShows(this);
    }
    return orElse();
  }
}

abstract class GetTopTVShows implements HomeEvent {
  const factory GetTopTVShows() = _$GetTopTVShows;
}

/// @nodoc
mixin _$HomeState {
  dynamic get stateId => throw _privateConstructorUsedError;
  List<HomeModel> get trendingPersons => throw _privateConstructorUsedError;
  List<DownloadsModel> get trendingMovies => throw _privateConstructorUsedError;
  List<EveryonesWatchingModel> get getTopTVShows =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {dynamic stateId,
      List<HomeModel> trendingPersons,
      List<DownloadsModel> trendingMovies,
      List<EveryonesWatchingModel> getTopTVShows,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = freezed,
    Object? trendingPersons = null,
    Object? trendingMovies = null,
    Object? getTopTVShows = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trendingPersons: null == trendingPersons
          ? _value.trendingPersons
          : trendingPersons // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      trendingMovies: null == trendingMovies
          ? _value.trendingMovies
          : trendingMovies // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      getTopTVShows: null == getTopTVShows
          ? _value.getTopTVShows
          : getTopTVShows // ignore: cast_nullable_to_non_nullable
              as List<EveryonesWatchingModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic stateId,
      List<HomeModel> trendingPersons,
      List<DownloadsModel> trendingMovies,
      List<EveryonesWatchingModel> getTopTVShows,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = freezed,
    Object? trendingPersons = null,
    Object? trendingMovies = null,
    Object? getTopTVShows = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_Initial(
      stateId: freezed == stateId ? _value.stateId! : stateId,
      trendingPersons: null == trendingPersons
          ? _value._trendingPersons
          : trendingPersons // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      trendingMovies: null == trendingMovies
          ? _value._trendingMovies
          : trendingMovies // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      getTopTVShows: null == getTopTVShows
          ? _value._getTopTVShows
          : getTopTVShows // ignore: cast_nullable_to_non_nullable
              as List<EveryonesWatchingModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.stateId,
      required final List<HomeModel> trendingPersons,
      required final List<DownloadsModel> trendingMovies,
      required final List<EveryonesWatchingModel> getTopTVShows,
      required this.isLoading,
      required this.isError})
      : _trendingPersons = trendingPersons,
        _trendingMovies = trendingMovies,
        _getTopTVShows = getTopTVShows;

  @override
  final dynamic stateId;
  final List<HomeModel> _trendingPersons;
  @override
  List<HomeModel> get trendingPersons {
    if (_trendingPersons is EqualUnmodifiableListView) return _trendingPersons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingPersons);
  }

  final List<DownloadsModel> _trendingMovies;
  @override
  List<DownloadsModel> get trendingMovies {
    if (_trendingMovies is EqualUnmodifiableListView) return _trendingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingMovies);
  }

  final List<EveryonesWatchingModel> _getTopTVShows;
  @override
  List<EveryonesWatchingModel> get getTopTVShows {
    if (_getTopTVShows is EqualUnmodifiableListView) return _getTopTVShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getTopTVShows);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, trendingPersons: $trendingPersons, trendingMovies: $trendingMovies, getTopTVShows: $getTopTVShows, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality()
                .equals(other._trendingPersons, _trendingPersons) &&
            const DeepCollectionEquality()
                .equals(other._trendingMovies, _trendingMovies) &&
            const DeepCollectionEquality()
                .equals(other._getTopTVShows, _getTopTVShows) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(_trendingPersons),
      const DeepCollectionEquality().hash(_trendingMovies),
      const DeepCollectionEquality().hash(_getTopTVShows),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final dynamic stateId,
      required final List<HomeModel> trendingPersons,
      required final List<DownloadsModel> trendingMovies,
      required final List<EveryonesWatchingModel> getTopTVShows,
      required final bool isLoading,
      required final bool isError}) = _$_Initial;

  @override
  dynamic get stateId;
  @override
  List<HomeModel> get trendingPersons;
  @override
  List<DownloadsModel> get trendingMovies;
  @override
  List<EveryonesWatchingModel> get getTopTVShows;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
