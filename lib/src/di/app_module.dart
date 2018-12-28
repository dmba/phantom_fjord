import 'package:get_it/get_it.dart';
import 'package:phantom_fjord/src/di/module.dart';
import 'package:phantom_fjord/src/pages/home/home.dart';

class AppModule extends Module {
  @override
  void configure(GetIt get) => get
    // BLoCs
    ..registerFactory(() => CounterBloc())
    // Pages
    ..registerFactory(() => HomePage(get<CounterBloc>()));
}
