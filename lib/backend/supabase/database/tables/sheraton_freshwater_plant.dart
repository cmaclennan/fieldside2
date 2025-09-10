import '../database.dart';

class SheratonFreshwaterPlantTable
    extends SupabaseTable<SheratonFreshwaterPlantRow> {
  @override
  String get tableName => 'Sheraton_Freshwater_Plant';

  @override
  SheratonFreshwaterPlantRow createRow(Map<String, dynamic> data) =>
      SheratonFreshwaterPlantRow(data);
}

class SheratonFreshwaterPlantRow extends SupabaseDataRow {
  SheratonFreshwaterPlantRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SheratonFreshwaterPlantTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get fwv1 => getField<String>('FWV1');
  set fwv1(String? value) => setField<String>('FWV1', value);

  double? get chl => getField<double>('CHL');
  set chl(double? value) => setField<double>('CHL', value);

  int? get p1 => getField<int>('P1');
  set p1(int? value) => setField<int>('P1', value);

  int? get p2 => getField<int>('P2');
  set p2(int? value) => setField<int>('P2', value);

  String? get notes => getField<String>('Notes');
  set notes(String? value) => setField<String>('Notes', value);

  int? get f1t => getField<int>('F1T');
  set f1t(int? value) => setField<int>('F1T', value);

  int? get f1b => getField<int>('F1B');
  set f1b(int? value) => setField<int>('F1B', value);

  int? get f2t => getField<int>('F2T');
  set f2t(int? value) => setField<int>('F2T', value);

  int? get f2b => getField<int>('F2B');
  set f2b(int? value) => setField<int>('F2B', value);

  int? get f3t => getField<int>('F3T');
  set f3t(int? value) => setField<int>('F3T', value);

  int? get f3b => getField<int>('F3B');
  set f3b(int? value) => setField<int>('F3B', value);

  int? get f4t => getField<int>('F4T');
  set f4t(int? value) => setField<int>('F4T', value);

  int? get f4b => getField<int>('F4B');
  set f4b(int? value) => setField<int>('F4B', value);

  String? get testTime => getField<String>('TEST_TIME');
  set testTime(String? value) => setField<String>('TEST_TIME', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);
}
