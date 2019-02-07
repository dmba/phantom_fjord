// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_module.dart';

// **************************************************************************
// InjectorGenerator
// **************************************************************************

class _$AppModule extends AppModule {
  void _configureBlocs() {
    final Container container = Container();
    container.registerFactory((c) => CounterBloc());
  }

  void _configurePages() {
    final Container container = Container();
    container.registerFactory((c) => HomePage(c<CounterBloc>()));
  }
}
