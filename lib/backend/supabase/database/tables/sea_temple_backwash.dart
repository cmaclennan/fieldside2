import '../database.dart';

class SeaTempleBackwashTable extends SupabaseTable<SeaTempleBackwashRow> {
  @override
  String get tableName => 'Sea_Temple_Backwash';

  @override
  SeaTempleBackwashRow createRow(Map<String, dynamic> data) =>
      SeaTempleBackwashRow(data);
}

class SeaTempleBackwashRow extends SupabaseDataRow {
  SeaTempleBackwashRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeaTempleBackwashTable();

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
}
