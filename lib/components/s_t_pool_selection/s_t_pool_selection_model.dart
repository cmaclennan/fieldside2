import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 's_t_pool_selection_widget.dart' show STPoolSelectionWidget;
import 'package:flutter/material.dart';

class STPoolSelectionModel extends FlutterFlowModel<STPoolSelectionWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PoolChoice widget.
  FormFieldController<String>? poolChoiceValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get poolChoiceValue => poolChoiceValueController?.value;
}
