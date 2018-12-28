import 'package:flutter/material.dart';
import 'package:phantom_fjord/src/app.dart';
import 'package:phantom_fjord/src/di/app_module.dart';
import 'package:phantom_fjord/src/di/injector.dart';

void main() {
  runApp(Injector(
    child: App(),
    modules: [
      AppModule(),
    ],
  ));
}
