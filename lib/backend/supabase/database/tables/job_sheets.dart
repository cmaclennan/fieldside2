import '../database.dart';

class JobSheetsTable extends SupabaseTable<JobSheetsRow> {
  @override
  String get tableName => 'Job_Sheets';

  @override
  JobSheetsRow createRow(Map<String, dynamic> data) => JobSheetsRow(data);
}

class JobSheetsRow extends SupabaseDataRow {
  JobSheetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => JobSheetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get stUnit => getField<String>('st_unit');
  set stUnit(String? value) => setField<String>('st_unit', value);

  String? get otherLoc => getField<String>('other_loc');
  set otherLoc(String? value) => setField<String>('other_loc', value);

  String? get details => getField<String>('details');
  set details(String? value) => setField<String>('details', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
