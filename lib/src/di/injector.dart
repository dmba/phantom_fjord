import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:phantom_fjord/src/di/module.dart';

class Injector extends InheritedWidget {
  factory Injector({
    @required Widget child,
    @required List<Module> modules,
  }) {
    final injector = Injector._(child);

    modules.forEach((m) => m.configure(injector._getIt));

    return injector;
  }

  Injector._(Widget child) : super(child: child);

  final GetIt _getIt = GetIt();

  static Injector of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(Injector);
  }

  @override
  bool updateShouldNotify(Injector old) => _getIt != old._getIt;

  T inject<T>() => _getIt.get<T>();
}
