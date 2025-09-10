import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _startDate = prefs.containsKey('ff_startDate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_startDate')!)
          : _startDate;
    });
    _safeInit(() {
      _endDate = prefs.containsKey('ff_endDate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_endDate')!)
          : _endDate;
    });
    _safeInit(() {
      _saltTarget = prefs.getInt('ff_saltTarget') ?? _saltTarget;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DateTime? _startDate = DateTime.fromMillisecondsSinceEpoch(1735696800000);
  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
    value != null
        ? prefs.setInt('ff_startDate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_startDate');
  }

  DateTime? _endDate = DateTime.fromMillisecondsSinceEpoch(1735696800000);
  DateTime? get endDate => _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
    value != null
        ? prefs.setInt('ff_endDate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_endDate');
  }

  int _saltTarget = 5000;
  int get saltTarget => _saltTarget;
  set saltTarget(int value) {
    _saltTarget = value;
    prefs.setInt('ff_saltTarget', value);
  }

  final _displayNameManager = FutureRequestManager<List<UsersRow>>();
  Future<List<UsersRow>> displayName({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRow>> Function() requestFn,
  }) =>
      _displayNameManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDisplayNameCache() => _displayNameManager.clear();
  void clearDisplayNameCacheKey(String? uniqueKey) =>
      _displayNameManager.clearRequest(uniqueKey);
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
