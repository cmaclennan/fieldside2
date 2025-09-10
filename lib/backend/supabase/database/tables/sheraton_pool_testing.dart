import '../database.dart';

class SheratonPoolTestingTable extends SupabaseTable<SheratonPoolTestingRow> {
  @override
  String get tableName => 'Sheraton_Pool_Testing';

  @override
  SheratonPoolTestingRow createRow(Map<String, dynamic> data) =>
      SheratonPoolTestingRow(data);
}

class SheratonPoolTestingRow extends SupabaseDataRow {
  SheratonPoolTestingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SheratonPoolTestingTable();

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

  String get location => getField<String>('location')!;
  set location(String value) => setField<String>('location', value);

  String? get pool => getField<String>('pool');
  set pool(String? value) => setField<String>('pool', value);

  String? get testTime => getField<String>('test_time');
  set testTime(String? value) => setField<String>('test_time', value);
}
