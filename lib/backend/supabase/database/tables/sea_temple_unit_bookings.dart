import '../database.dart';

class SeaTempleUnitBookingsTable
    extends SupabaseTable<SeaTempleUnitBookingsRow> {
  @override
  String get tableName => 'SeaTemple_Unit_Bookings';

  @override
  SeaTempleUnitBookingsRow createRow(Map<String, dynamic> data) =>
      SeaTempleUnitBookingsRow(data);
}

class SeaTempleUnitBookingsRow extends SupabaseDataRow {
  SeaTempleUnitBookingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeaTempleUnitBookingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  DateTime? get checkIn => getField<DateTime>('check_in');
  set checkIn(DateTime? value) => setField<DateTime>('check_in', value);

  DateTime? get checkOut => getField<DateTime>('check_out');
  set checkOut(DateTime? value) => setField<DateTime>('check_out', value);

  String? get owner => getField<String>('owner');
  set owner(String? value) => setField<String>('owner', value);

  bool? get ownerBooking => getField<bool>('owner_booking');
  set ownerBooking(bool? value) => setField<bool>('owner_booking', value);
}
