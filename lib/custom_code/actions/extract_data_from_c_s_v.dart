// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

Future<String> extractDataFromCSV(
  FFUploadedFile? uploadedFile,
  String? delimiter,
) async {
  if (uploadedFile == null) {
    return '[]'; // Return an empty JSON array if no file
  }

  try {
    final fileBytes = uploadedFile.bytes;
    if (fileBytes == null) {
      return '[]'; // Return an empty JSON array if file bytes are null
    }
    final fileContent = String.fromCharCodes(fileBytes);
    final List<String> rows = fileContent.split('\n');
    List<List<String>> parsedData = [];

    final String actualDelimiter = delimiter ?? ',';

    for (final row in rows) {
      if (row.trim().isNotEmpty) {
        final List<String> values =
            row.split(actualDelimiter).map((value) => value.trim()).toList();
        parsedData.add(values);
      }
    }
    // Encode the List<List<String>> to a JSON string
    return jsonEncode(parsedData);
  } catch (e) {
    print('Error reading or parsing CSV file: $e');
    return '[]'; // Return an empty JSON array on error
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
