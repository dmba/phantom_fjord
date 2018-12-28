import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom_fjord/src/pages/home/home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;
  final CounterBloc _bloc = CounterBloc();

  @override
  _HomePageState createState() => _HomePageState(_bloc);
}

class _HomePageState extends State<HomePage> {
  _HomePageState(this._bloc);

  final CounterBloc _bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<CounterEvent, CounterState>(
        bloc: _bloc,
        builder: _counterBuilder,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _bloc.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _counterBuilder(BuildContext context, CounterState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${state.value}',
            style: Theme.of(context).textTheme.display1,
          ),
        ],
      ),
    );
  }
}
