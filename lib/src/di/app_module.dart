import 'package:kiwi/kiwi.dart';
import 'package:phantom_fjord/src/di/module.dart';
import 'package:phantom_fjord/src/pages/home/home.dart';

part 'package:phantom_fjord/src/di/app_module.g.dart';

abstract class AppModule implements Module {
  const AppModule();

  factory AppModule.forApp() => new _$AppModule();

  @override
  void configure(Container container) {
    _configureBlocs();
    _configurePages();
  }

  @Register.factory(CounterBloc)
  void _configureBlocs();

  @Register.factory(HomePage)
  void _configurePages();
}
