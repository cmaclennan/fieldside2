import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double progressvalue(int percentage) {
  return percentage / 100;
}

/// Current date minus 1 week
DateTime? dateminus7date() {
  DateTime? date = DateTime.now();
  DateTime? dateMinus7Days = date.subtract(Duration(days: 6));
  return dateMinus7Days;
}

bool? doesUnitNumberBeginWithTwo1(String? unitNumber) {
  String unitNumberStr = unitNumber.toString();
  String unitSubString = unitNumberStr.substring(0, 1);
  if (unitSubString == "2") {
    return true;
  } else {
    return false;
  }
}

/// Current Date Minus 2 Weeks
DateTime? dateminus14date() {
  DateTime? date = DateTime.now();
  DateTime? dateMinus14Days = date.subtract(Duration(days: 13));
  return dateMinus14Days;
}
