import '../database.dart';

class ShedInventoryTable extends SupabaseTable<ShedInventoryRow> {
  @override
  String get tableName => 'Shed_Inventory';

  @override
  ShedInventoryRow createRow(Map<String, dynamic> data) =>
      ShedInventoryRow(data);
}

class ShedInventoryRow extends SupabaseDataRow {
  ShedInventoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShedInventoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get salt => getField<int>('salt');
  set salt(int? value) => setField<int>('salt', value);

  int? get buffer => getField<int>('buffer');
  set buffer(int? value) => setField<int>('buffer', value);

  int? get calcium => getField<int>('calcium');
  set calcium(int? value) => setField<int>('calcium', value);

  int? get cyanuric => getField<int>('cyanuric');
  set cyanuric(int? value) => setField<int>('cyanuric', value);

  int? get acid => getField<int>('acid');
  set acid(int? value) => setField<int>('acid', value);

  int? get sdic => getField<int>('sdic');
  set sdic(int? value) => setField<int>('sdic', value);
}
