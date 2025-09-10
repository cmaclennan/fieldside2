import '../database.dart';

class SheratonSaltwaterPlantTable
    extends SupabaseTable<SheratonSaltwaterPlantRow> {
  @override
  String get tableName => 'Sheraton_Saltwater_Plant';

  @override
  SheratonSaltwaterPlantRow createRow(Map<String, dynamic> data) =>
      SheratonSaltwaterPlantRow(data);
}

class SheratonSaltwaterPlantRow extends SupabaseDataRow {
  SheratonSaltwaterPlantRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SheratonSaltwaterPlantTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get fwg => getField<int>('FWG');
  set fwg(int? value) => setField<int>('FWG', value);

  String? get bal => getField<String>('BAL');
  set bal(String? value) => setField<String>('BAL', value);

  double? get p1 => getField<double>('P1');
  set p1(double? value) => setField<double>('P1', value);

  double? get p2 => getField<double>('P2');
  set p2(double? value) => setField<double>('P2', value);

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

  int? get f5t => getField<int>('F5T');
  set f5t(int? value) => setField<int>('F5T', value);

  int? get f5b => getField<int>('F5B');
  set f5b(int? value) => setField<int>('F5B', value);

  String? get testTime => getField<String>('TEST_TIME');
  set testTime(String? value) => setField<String>('TEST_TIME', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get chl => getField<String>('CHL');
  set chl(String? value) => setField<String>('CHL', value);

  String? get tide => getField<String>('TIDE');
  set tide(String? value) => setField<String>('TIDE', value);

  String? get saltPump => getField<String>('SALT_PUMP');
  set saltPump(String? value) => setField<String>('SALT_PUMP', value);
}
