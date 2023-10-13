import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/dependency_injection/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async =>
    getIt.init(environment: Environment.prod);


//import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
// import 'package:netflix_clone/domain/dependency_injection/injectable.config.dart';

// final getIt = GetIt.instance;

// @InjectableInit(
//   initializerName: 'init', // default
//   preferRelativeImports: true, // default
//   asExtension: true, // default
// )
// Future<void> configureInjection() async =>
//     await getIt.init(environment: Environment.prod);
