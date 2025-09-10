import '../database.dart';

class ResortPoolChemicalsTable extends SupabaseTable<ResortPoolChemicalsRow> {
  @override
  String get tableName => 'Resort_Pool_Chemicals';

  @override
  ResortPoolChemicalsRow createRow(Map<String, dynamic> data) =>
      ResortPoolChemicalsRow(data);
}

class ResortPoolChemicalsRow extends SupabaseDataRow {
  ResortPoolChemicalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ResortPoolChemicalsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get salt => getField<int>('salt');
  set salt(int? value) => setField<int>('salt', value);

  int? get acid => getField<int>('acid');
  set acid(int? value) => setField<int>('acid', value);

  int? get sdic => getField<int>('SDIC');
  set sdic(int? value) => setField<int>('SDIC', value);

  int? get buffer => getField<int>('buffer');
  set buffer(int? value) => setField<int>('buffer', value);

  int? get calcium => getField<int>('calcium');
  set calcium(int? value) => setField<int>('calcium', value);

  int? get cyanuric => getField<int>('cyanuric');
  set cyanuric(int? value) => setField<int>('cyanuric', value);

  int? get liqChlorine => getField<int>('liq_chlorine');
  set liqChlorine(int? value) => setField<int>('liq_chlorine', value);

  int? get chlorineTabs => getField<int>('chlorine_tabs');
  set chlorineTabs(int? value) => setField<int>('chlorine_tabs', value);

  int? get calhypo => getField<int>('calhypo');
  set calhypo(int? value) => setField<int>('calhypo', value);

  int? get clarifier => getField<int>('clarifier');
  set clarifier(int? value) => setField<int>('clarifier', value);

  int? get phosphate => getField<int>('phosphate');
  set phosphate(int? value) => setField<int>('phosphate', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);
}
