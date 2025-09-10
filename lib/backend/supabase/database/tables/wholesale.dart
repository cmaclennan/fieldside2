import '../database.dart';

class WholesaleTable extends SupabaseTable<WholesaleRow> {
  @override
  String get tableName => 'Wholesale';

  @override
  WholesaleRow createRow(Map<String, dynamic> data) => WholesaleRow(data);
}

class WholesaleRow extends SupabaseDataRow {
  WholesaleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WholesaleTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get client => getField<String>('client');
  set client(String? value) => setField<String>('client', value);

  int? get salt => getField<int>('salt');
  set salt(int? value) => setField<int>('salt', value);

  int? get liqChlorine => getField<int>('liq_chlorine');
  set liqChlorine(int? value) => setField<int>('liq_chlorine', value);

  int? get sdic => getField<int>('sdic');
  set sdic(int? value) => setField<int>('sdic', value);

  int? get tabs => getField<int>('tabs');
  set tabs(int? value) => setField<int>('tabs', value);

  int? get buffer => getField<int>('buffer');
  set buffer(int? value) => setField<int>('buffer', value);

  int? get calcium => getField<int>('calcium');
  set calcium(int? value) => setField<int>('calcium', value);

  int? get cyanuric => getField<int>('cyanuric');
  set cyanuric(int? value) => setField<int>('cyanuric', value);

  int? get acid => getField<int>('acid');
  set acid(int? value) => setField<int>('acid', value);

  String? get misc => getField<String>('misc');
  set misc(String? value) => setField<String>('misc', value);
}
