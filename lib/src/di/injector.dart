import 'package:flutter/widgets.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:phantom_fjord/src/di/module.dart';

class Injector extends InheritedWidget {
  static Injector of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(Injector);
  }

  Injector._(Widget child) : super(child: child);

  factory Injector({
    @required Widget child,
    @required List<Module> modules,
  }) {
    final injector = Injector._(child);

    modules.forEach((m) => m.configure(injector._container));

    return injector;
  }

  final kiwi.Container _container = kiwi.Container();

  @override
  bool updateShouldNotify(Injector old) => _container != old._container;

  T inject<T>() => _container<T>();
}
