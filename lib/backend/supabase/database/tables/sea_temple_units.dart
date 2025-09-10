import '../database.dart';

class SeaTempleUnitsTable extends SupabaseTable<SeaTempleUnitsRow> {
  @override
  String get tableName => 'SeaTemple_Units';

  @override
  SeaTempleUnitsRow createRow(Map<String, dynamic> data) =>
      SeaTempleUnitsRow(data);
}

class SeaTempleUnitsRow extends SupabaseDataRow {
  SeaTempleUnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeaTempleUnitsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  String? get owner => getField<String>('owner');
  set owner(String? value) => setField<String>('owner', value);
}
