import 'package:phantom_fjord/src/data/Repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RepositoryImpl extends Repository {
  final SharedPreferences _prefs;

  RepositoryImpl(this._prefs);

  @override
  int get counter => _prefs.get('counter') ?? 0;

  @override
  set counter(int value) => _prefs.setInt('counter', value);
}
