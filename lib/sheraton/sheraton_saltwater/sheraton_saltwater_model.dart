import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sheraton_saltwater_widget.dart' show SheratonSaltwaterWidget;
import 'package:flutter/material.dart';

class SheratonSaltwaterModel extends FlutterFlowModel<SheratonSaltwaterWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for TestTime widget.
  String? testTimeValue;
  FormFieldController<String>? testTimeValueController;
  // State field(s) for Water_Meter widget.
  FocusNode? waterMeterFocusNode;
  TextEditingController? waterMeterTextController;
  String? Function(BuildContext, String?)? waterMeterTextControllerValidator;
  // State field(s) for Chl widget.
  FocusNode? chlFocusNode;
  TextEditingController? chlTextController;
  String? Function(BuildContext, String?)? chlTextControllerValidator;
  // State field(s) for Balance_Tank widget.
  FocusNode? balanceTankFocusNode;
  TextEditingController? balanceTankTextController;
  String? Function(BuildContext, String?)? balanceTankTextControllerValidator;
  // State field(s) for Tide widget.
  FormFieldController<List<String>>? tideValueController;
  String? get tideValue => tideValueController?.value?.firstOrNull;
  set tideValue(String? val) =>
      tideValueController?.value = val != null ? [val] : [];
  // State field(s) for SaltWaterPump widget.
  FormFieldController<List<String>>? saltWaterPumpValueController;
  String? get saltWaterPumpValue =>
      saltWaterPumpValueController?.value?.firstOrNull;
  set saltWaterPumpValue(String? val) =>
      saltWaterPumpValueController?.value = val != null ? [val] : [];
  // State field(s) for Pump1 widget.
  FocusNode? pump1FocusNode;
  TextEditingController? pump1TextController;
  String? Function(BuildContext, String?)? pump1TextControllerValidator;
  // State field(s) for Pump2 widget.
  FocusNode? pump2FocusNode;
  TextEditingController? pump2TextController;
  String? Function(BuildContext, String?)? pump2TextControllerValidator;
  // State field(s) for Notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;
  // State field(s) for F1T widget.
  FocusNode? f1tFocusNode1;
  TextEditingController? f1tTextController1;
  String? Function(BuildContext, String?)? f1tTextController1Validator;
  // State field(s) for F2T widget.
  FocusNode? f2tFocusNode1;
  TextEditingController? f2tTextController1;
  String? Function(BuildContext, String?)? f2tTextController1Validator;
  // State field(s) for F3T widget.
  FocusNode? f3tFocusNode1;
  TextEditingController? f3tTextController1;
  String? Function(BuildContext, String?)? f3tTextController1Validator;
  // State field(s) for F4T widget.
  FocusNode? f4tFocusNode1;
  TextEditingController? f4tTextController1;
  String? Function(BuildContext, String?)? f4tTextController1Validator;
  // State field(s) for F5T widget.
  FocusNode? f5tFocusNode1;
  TextEditingController? f5tTextController1;
  String? Function(BuildContext, String?)? f5tTextController1Validator;
  // State field(s) for F1B widget.
  FocusNode? f1bFocusNode1;
  TextEditingController? f1bTextController1;
  String? Function(BuildContext, String?)? f1bTextController1Validator;
  // State field(s) for F2B widget.
  FocusNode? f2bFocusNode1;
  TextEditingController? f2bTextController1;
  String? Function(BuildContext, String?)? f2bTextController1Validator;
  // State field(s) for F3B widget.
  FocusNode? f3bFocusNode1;
  TextEditingController? f3bTextController1;
  String? Function(BuildContext, String?)? f3bTextController1Validator;
  // State field(s) for F4B widget.
  FocusNode? f4bFocusNode1;
  TextEditingController? f4bTextController1;
  String? Function(BuildContext, String?)? f4bTextController1Validator;
  // State field(s) for F5B widget.
  FocusNode? f5bFocusNode1;
  TextEditingController? f5bTextController1;
  String? Function(BuildContext, String?)? f5bTextController1Validator;
  // State field(s) for F1T widget.
  FocusNode? f1tFocusNode2;
  TextEditingController? f1tTextController2;
  String? Function(BuildContext, String?)? f1tTextController2Validator;
  // State field(s) for F2T widget.
  FocusNode? f2tFocusNode2;
  TextEditingController? f2tTextController2;
  String? Function(BuildContext, String?)? f2tTextController2Validator;
  // State field(s) for F3T widget.
  FocusNode? f3tFocusNode2;
  TextEditingController? f3tTextController2;
  String? Function(BuildContext, String?)? f3tTextController2Validator;
  // State field(s) for F4T widget.
  FocusNode? f4tFocusNode2;
  TextEditingController? f4tTextController2;
  String? Function(BuildContext, String?)? f4tTextController2Validator;
  // State field(s) for F5T widget.
  FocusNode? f5tFocusNode2;
  TextEditingController? f5tTextController2;
  String? Function(BuildContext, String?)? f5tTextController2Validator;
  // State field(s) for F1B widget.
  FocusNode? f1bFocusNode2;
  TextEditingController? f1bTextController2;
  String? Function(BuildContext, String?)? f1bTextController2Validator;
  // State field(s) for F2B widget.
  FocusNode? f2bFocusNode2;
  TextEditingController? f2bTextController2;
  String? Function(BuildContext, String?)? f2bTextController2Validator;
  // State field(s) for F3B widget.
  FocusNode? f3bFocusNode2;
  TextEditingController? f3bTextController2;
  String? Function(BuildContext, String?)? f3bTextController2Validator;
  // State field(s) for F4B widget.
  FocusNode? f4bFocusNode2;
  TextEditingController? f4bTextController2;
  String? Function(BuildContext, String?)? f4bTextController2Validator;
  // State field(s) for F5B widget.
  FocusNode? f5bFocusNode2;
  TextEditingController? f5bTextController2;
  String? Function(BuildContext, String?)? f5bTextController2Validator;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    waterMeterFocusNode?.dispose();
    waterMeterTextController?.dispose();

    chlFocusNode?.dispose();
    chlTextController?.dispose();

    balanceTankFocusNode?.dispose();
    balanceTankTextController?.dispose();

    pump1FocusNode?.dispose();
    pump1TextController?.dispose();

    pump2FocusNode?.dispose();
    pump2TextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();

    f1tFocusNode1?.dispose();
    f1tTextController1?.dispose();

    f2tFocusNode1?.dispose();
    f2tTextController1?.dispose();

    f3tFocusNode1?.dispose();
    f3tTextController1?.dispose();

    f4tFocusNode1?.dispose();
    f4tTextController1?.dispose();

    f5tFocusNode1?.dispose();
    f5tTextController1?.dispose();

    f1bFocusNode1?.dispose();
    f1bTextController1?.dispose();

    f2bFocusNode1?.dispose();
    f2bTextController1?.dispose();

    f3bFocusNode1?.dispose();
    f3bTextController1?.dispose();

    f4bFocusNode1?.dispose();
    f4bTextController1?.dispose();

    f5bFocusNode1?.dispose();
    f5bTextController1?.dispose();

    f1tFocusNode2?.dispose();
    f1tTextController2?.dispose();

    f2tFocusNode2?.dispose();
    f2tTextController2?.dispose();

    f3tFocusNode2?.dispose();
    f3tTextController2?.dispose();

    f4tFocusNode2?.dispose();
    f4tTextController2?.dispose();

    f5tFocusNode2?.dispose();
    f5tTextController2?.dispose();

    f1bFocusNode2?.dispose();
    f1bTextController2?.dispose();

    f2bFocusNode2?.dispose();
    f2bTextController2?.dispose();

    f3bFocusNode2?.dispose();
    f3bTextController2?.dispose();

    f4bFocusNode2?.dispose();
    f4bTextController2?.dispose();

    f5bFocusNode2?.dispose();
    f5bTextController2?.dispose();
  }
}
