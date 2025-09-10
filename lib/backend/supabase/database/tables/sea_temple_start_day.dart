import '../database.dart';

class SeaTempleStartDayTable extends SupabaseTable<SeaTempleStartDayRow> {
  @override
  String get tableName => 'Sea_Temple_StartDay';

  @override
  SeaTempleStartDayRow createRow(Map<String, dynamic> data) =>
      SeaTempleStartDayRow(data);
}

class SeaTempleStartDayRow extends SupabaseDataRow {
  SeaTempleStartDayRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeaTempleStartDayTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get waterMeter => getField<int>('water_meter');
  set waterMeter(int? value) => setField<int>('water_meter', value);

  double? get aquaPh => getField<double>('aqua_ph');
  set aquaPh(double? value) => setField<double>('aqua_ph', value);

  int? get aquaOrp => getField<int>('aqua_orp');
  set aquaOrp(int? value) => setField<int>('aqua_orp', value);

  bool? get filter => getField<bool>('filter');
  set filter(bool? value) => setField<bool>('filter', value);

  bool? get hammerhead => getField<bool>('hammerhead');
  set hammerhead(bool? value) => setField<bool>('hammerhead', value);

  bool? get chemicals => getField<bool>('chemicals');
  set chemicals(bool? value) => setField<bool>('chemicals', value);

  bool? get gauges => getField<bool>('gauges');
  set gauges(bool? value) => setField<bool>('gauges', value);

  bool? get balance => getField<bool>('balance');
  set balance(bool? value) => setField<bool>('balance', value);

  bool? get bookings => getField<bool>('bookings');
  set bookings(bool? value) => setField<bool>('bookings', value);

  bool? get logbook => getField<bool>('logbook');
  set logbook(bool? value) => setField<bool>('logbook', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);
}
