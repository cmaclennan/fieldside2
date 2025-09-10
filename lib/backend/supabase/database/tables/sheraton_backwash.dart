import '../database.dart';

class SheratonBackwashTable extends SupabaseTable<SheratonBackwashRow> {
  @override
  String get tableName => 'Sheraton_Backwash';

  @override
  SheratonBackwashRow createRow(Map<String, dynamic> data) =>
      SheratonBackwashRow(data);
}

class SheratonBackwashRow extends SupabaseDataRow {
  SheratonBackwashRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SheratonBackwashTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  bool? get swf1 => getField<bool>('SWF1');
  set swf1(bool? value) => setField<bool>('SWF1', value);

  bool? get swf2 => getField<bool>('SWF2');
  set swf2(bool? value) => setField<bool>('SWF2', value);

  bool? get swf3 => getField<bool>('SWF3');
  set swf3(bool? value) => setField<bool>('SWF3', value);

  bool? get swf4 => getField<bool>('SWF4');
  set swf4(bool? value) => setField<bool>('SWF4', value);

  bool? get swf5 => getField<bool>('SWF5');
  set swf5(bool? value) => setField<bool>('SWF5', value);

  bool? get fwf1 => getField<bool>('FWF1');
  set fwf1(bool? value) => setField<bool>('FWF1', value);

  bool? get fwf2 => getField<bool>('FWF2');
  set fwf2(bool? value) => setField<bool>('FWF2', value);

  bool? get fwf3 => getField<bool>('FWF3');
  set fwf3(bool? value) => setField<bool>('FWF3', value);

  bool? get fwf4 => getField<bool>('FWF4');
  set fwf4(bool? value) => setField<bool>('FWF4', value);

  bool? get fwf5 => getField<bool>('FWF5');
  set fwf5(bool? value) => setField<bool>('FWF5', value);
}
