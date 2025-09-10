import '../database.dart';

class ResortPoolTestingTable extends SupabaseTable<ResortPoolTestingRow> {
  @override
  String get tableName => 'Resort_Pool_Testing';

  @override
  ResortPoolTestingRow createRow(Map<String, dynamic> data) =>
      ResortPoolTestingRow(data);
}

class ResortPoolTestingRow extends SupabaseDataRow {
  ResortPoolTestingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ResortPoolTestingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  int get salt => getField<int>('salt')!;
  set salt(int value) => setField<int>('salt', value);

  double get ph => getField<double>('ph')!;
  set ph(double value) => setField<double>('ph', value);

  double get chl => getField<double>('chl')!;
  set chl(double value) => setField<double>('chl', value);

  int get alk => getField<int>('alk')!;
  set alk(int value) => setField<int>('alk', value);

  int get cal => getField<int>('cal')!;
  set cal(int value) => setField<int>('cal', value);

  int get cyan => getField<int>('cyan')!;
  set cyan(int value) => setField<int>('cyan', value);

  String get location => getField<String>('location')!;
  set location(String value) => setField<String>('location', value);

  bool get backwash => getField<bool>('backwash')!;
  set backwash(bool value) => setField<bool>('backwash', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);
}
