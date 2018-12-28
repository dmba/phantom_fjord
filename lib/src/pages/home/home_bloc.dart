import 'package:bloc/bloc.dart';
import 'package:phantom_fjord/src/data/Repository.dart';
import 'package:phantom_fjord/src/pages/home/home.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final Repository _repo;

  CounterBloc(this._repo);

  @override
  CounterState get initialState => CounterState(
        value: _repo.counter,
      );

  @override
  Stream<CounterState> mapEventToState(
    CounterState currentState,
    CounterEvent event,
  ) async* {
    CounterState newState;
    if (event is Increment) {
      newState = CounterState(value: currentState.value + 1);
    }
    if (event is Decrement) {
      newState = CounterState(value: currentState.value - 1);
    }
    _repo.counter = newState.value;
    yield newState;
  }

  void increment() {
    dispatch(Increment());
  }

  void decrement() {
    dispatch(Decrement());
  }
}
