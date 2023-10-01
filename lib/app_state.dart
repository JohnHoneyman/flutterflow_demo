import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _ages = [18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30];
  List<int> get ages => _ages;
  set ages(List<int> _value) {
    _ages = _value;
  }

  void addToAges(int _value) {
    _ages.add(_value);
  }

  void removeFromAges(int _value) {
    _ages.remove(_value);
  }

  void removeAtIndexFromAges(int _index) {
    _ages.removeAt(_index);
  }

  void updateAgesAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _ages[_index] = updateFn(_ages[_index]);
  }

  void insertAtIndexInAges(int _index, int _value) {
    _ages.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
