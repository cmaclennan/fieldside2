import '../database.dart';

class SeaTempleUnitTestsTable extends SupabaseTable<SeaTempleUnitTestsRow> {
  @override
  String get tableName => 'SeaTemple_Unit_Tests';

  @override
  SeaTempleUnitTestsRow createRow(Map<String, dynamic> data) =>
      SeaTempleUnitTestsRow(data);
}

class SeaTempleUnitTestsRow extends SupabaseDataRow {
  SeaTempleUnitTestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeaTempleUnitTestsTable();

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

  String get unit => getField<String>('unit')!;
  set unit(String value) => setField<String>('unit', value);

  String? get owner => getField<String>('owner');
  set owner(String? value) => setField<String>('owner', value);

  String? get testService => getField<String>('test_service');
  set testService(String? value) => setField<String>('test_service', value);
}
