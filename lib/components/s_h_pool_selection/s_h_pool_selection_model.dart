import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 's_h_pool_selection_widget.dart' show SHPoolSelectionWidget;
import 'package:flutter/material.dart';

class SHPoolSelectionModel extends FlutterFlowModel<SHPoolSelectionWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for VillaChoice widget.
  FormFieldController<String>? villaChoiceValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get villaChoiceValue => villaChoiceValueController?.value;
}
