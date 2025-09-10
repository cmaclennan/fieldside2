import '/backend/supabase/supabase.dart';
import '/components/seatemple_booking/seatemple_booking_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seatemple_booking_widget.dart' show SeatempleBookingWidget;
import 'package:flutter/material.dart';

class SeatempleBookingModel extends FlutterFlowModel<SeatempleBookingWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for unitNumber widget.
  FocusNode? unitNumberFocusNode;
  TextEditingController? unitNumberTextController;
  String? Function(BuildContext, String?)? unitNumberTextControllerValidator;
  String? _unitNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Unit Number is required';
    }

    if (val.length < 3) {
      return 'Invalid Unit Number';
    }
    if (val.length > 3) {
      return 'Invalid Unit Number';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in unitNumber widget.
  List<SeaTempleUnitsRow>? owner;
  // State field(s) for clientOwner widget.
  FocusNode? clientOwnerFocusNode;
  TextEditingController? clientOwnerTextController;
  String? Function(BuildContext, String?)? clientOwnerTextControllerValidator;
  // State field(s) for ownerBooking widget.
  bool? ownerBookingValue;
  // State field(s) for checkIn widget.
  FocusNode? checkInFocusNode;
  TextEditingController? checkInTextController;
  String? Function(BuildContext, String?)? checkInTextControllerValidator;
  String? _checkInTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Check In is required';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for checkOut widget.
  FocusNode? checkOutFocusNode;
  TextEditingController? checkOutTextController;
  String? Function(BuildContext, String?)? checkOutTextControllerValidator;
  String? _checkOutTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Check In is required';
    }

    return null;
  }

  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {
    unitNumberTextControllerValidator = _unitNumberTextControllerValidator;
    checkInTextControllerValidator = _checkInTextControllerValidator;
    checkOutTextControllerValidator = _checkOutTextControllerValidator;
  }

  @override
  void dispose() {
    unitNumberFocusNode?.dispose();
    unitNumberTextController?.dispose();

    clientOwnerFocusNode?.dispose();
    clientOwnerTextController?.dispose();

    checkInFocusNode?.dispose();
    checkInTextController?.dispose();

    checkOutFocusNode?.dispose();
    checkOutTextController?.dispose();
  }
}
