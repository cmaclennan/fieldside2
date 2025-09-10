import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'wholesale_cust_widget.dart' show WholesaleCustWidget;
import 'package:flutter/material.dart';

class WholesaleCustModel extends FlutterFlowModel<WholesaleCustWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CustChoice widget.
  FormFieldController<String>? custChoiceValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get custChoiceValue => custChoiceValueController?.value;
}
