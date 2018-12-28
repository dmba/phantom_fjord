import 'package:get_it/get_it.dart';
import 'package:phantom_fjord/src/data/Repository.dart';
import 'package:phantom_fjord/src/data/RepositoryImpl.dart';
import 'package:phantom_fjord/src/di/module.dart';
import 'package:phantom_fjord/src/pages/home/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppModule extends Module {
  @override
  void configure(GetIt get) => get
    // Common
    ..registerLazySingleton(() async => await SharedPreferences.getInstance())
    ..registerLazySingleton<Repository>(() => RepositoryImpl(get()))
    // BLoCs
    ..registerFactory(() => CounterBloc(get()))
    // Pages
    ..registerFactory(() => HomePage(get<CounterBloc>()));
}
