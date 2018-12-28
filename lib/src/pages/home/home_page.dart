import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom_fjord/src/pages/home/home.dart';

class HomePage extends StatefulWidget {
  HomePage(this._bloc, {Key key}) : super(key: key);

  final CounterBloc _bloc;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    widget._bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: BlocBuilder<CounterEvent, CounterState>(
        bloc: widget._bloc,
        builder: _counterBuilder,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget._bloc.increment,
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
