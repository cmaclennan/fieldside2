import '../database.dart';

class LogbookTable extends SupabaseTable<LogbookRow> {
  @override
  String get tableName => 'Logbook';

  @override
  LogbookRow createRow(Map<String, dynamic> data) => LogbookRow(data);
}

class LogbookRow extends SupabaseDataRow {
  LogbookRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LogbookTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  String? get notes => getField<String>('Notes');
  set notes(String? value) => setField<String>('Notes', value);

  String? get location => getField<String>('Location');
  set location(String? value) => setField<String>('Location', value);
}
