import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sea_temple_testing_widget.dart' show SeaTempleTestingWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SeaTempleTestingModel extends FlutterFlowModel<SeaTempleTestingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for Unit widget.
  FocusNode? unitFocusNode;
  TextEditingController? unitTextController;
  String? Function(BuildContext, String?)? unitTextControllerValidator;
  // State field(s) for Owner widget.
  FocusNode? ownerFocusNode;
  TextEditingController? ownerTextController;
  String? Function(BuildContext, String?)? ownerTextControllerValidator;
  // State field(s) for test_service widget.
  FormFieldController<String>? testServiceValueController;
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
  // State field(s) for bromine widget.
  FocusNode? bromineFocusNode;
  TextEditingController? bromineTextController;
  String? Function(BuildContext, String?)? bromineTextControllerValidator;
  // State field(s) for Alkalinity widget.
  FocusNode? alkalinityFocusNode;
  TextEditingController? alkalinityTextController;
  String? Function(BuildContext, String?)? alkalinityTextControllerValidator;
  // State field(s) for Calcium widget.
  FocusNode? calciumFocusNode;
  TextEditingController? calciumTextController;
  String? Function(BuildContext, String?)? calciumTextControllerValidator;
  // State field(s) for Cyanuric widget.
  FocusNode? cyanuricFocusNode;
  TextEditingController? cyanuricTextController;
  String? Function(BuildContext, String?)? cyanuricTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    unitFocusNode?.dispose();
    unitTextController?.dispose();

    ownerFocusNode?.dispose();
    ownerTextController?.dispose();

    saltFocusNode?.dispose();
    saltTextController?.dispose();

    phFocusNode?.dispose();
    phTextController?.dispose();

    chlorineFocusNode?.dispose();
    chlorineTextController?.dispose();

    bromineFocusNode?.dispose();
    bromineTextController?.dispose();

    alkalinityFocusNode?.dispose();
    alkalinityTextController?.dispose();

    calciumFocusNode?.dispose();
    calciumTextController?.dispose();

    cyanuricFocusNode?.dispose();
    cyanuricTextController?.dispose();
  }

  /// Additional helper methods.
  String? get testServiceValue => testServiceValueController?.value;
}
