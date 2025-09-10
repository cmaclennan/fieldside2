import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'sheraton_pooltesting_widget.dart' show SheratonPooltestingWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SheratonPooltestingModel
    extends FlutterFlowModel<SheratonPooltestingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for selectPool widget.
  String? selectPoolValue;
  FormFieldController<String>? selectPoolValueController;
  // State field(s) for selectTime widget.
  String? selectTimeValue;
  FormFieldController<String>? selectTimeValueController;
  // State field(s) for Salt widget.
  FocusNode? saltFocusNode;
  TextEditingController? saltTextController;
  String? Function(BuildContext, String?)? saltTextControllerValidator;
  // State field(s) for PH widget.
  FocusNode? phFocusNode;
  TextEditingController? phTextController;
  late MaskTextInputFormatter phMask;
  String? Function(BuildContext, String?)? phTextControllerValidator;
  // State field(s) for chlorine widget.
  FocusNode? chlorineFocusNode;
  TextEditingController? chlorineTextController;
  String? Function(BuildContext, String?)? chlorineTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    locationFocusNode?.dispose();
    locationTextController?.dispose();

    saltFocusNode?.dispose();
    saltTextController?.dispose();

    phFocusNode?.dispose();
    phTextController?.dispose();

    chlorineFocusNode?.dispose();
    chlorineTextController?.dispose();
  }
}
