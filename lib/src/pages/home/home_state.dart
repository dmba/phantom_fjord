import 'package:meta/meta.dart';

class CounterState {
  const CounterState({@required this.value});

  factory CounterState.initial() {
    return CounterState(
      value: 0,
    );
  }

  final int value;
}
