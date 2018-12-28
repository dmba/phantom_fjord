import 'package:flutter/material.dart';
import 'package:phantom_fjord/src/pages/home/home.dart';

const HOME = "/";

final routes = <String, WidgetBuilder>{
  HOME: (BuildContext context) => HomePage(CounterBloc())
};
