import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'receive_stock_widget.dart' show ReceiveStockWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ReceiveStockModel extends FlutterFlowModel<ReceiveStockWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for Salt widget.
  FocusNode? saltFocusNode;
  TextEditingController? saltTextController;
  String? Function(BuildContext, String?)? saltTextControllerValidator;
  // State field(s) for Buffer widget.
  FocusNode? bufferFocusNode;
  TextEditingController? bufferTextController;
  late MaskTextInputFormatter bufferMask;
  String? Function(BuildContext, String?)? bufferTextControllerValidator;
  // State field(s) for Calcium widget.
  FocusNode? calciumFocusNode;
  TextEditingController? calciumTextController;
  String? Function(BuildContext, String?)? calciumTextControllerValidator;
  // State field(s) for Cyanuric widget.
  FocusNode? cyanuricFocusNode;
  TextEditingController? cyanuricTextController;
  String? Function(BuildContext, String?)? cyanuricTextControllerValidator;
  // State field(s) for Acid widget.
  FocusNode? acidFocusNode;
  TextEditingController? acidTextController;
  String? Function(BuildContext, String?)? acidTextControllerValidator;
  // State field(s) for SDIC widget.
  FocusNode? sdicFocusNode;
  TextEditingController? sdicTextController;
  String? Function(BuildContext, String?)? sdicTextControllerValidator;
  // State field(s) for Tabs widget.
  FocusNode? tabsFocusNode;
  TextEditingController? tabsTextController;
  String? Function(BuildContext, String?)? tabsTextControllerValidator;
  // State field(s) for Liq_Chl widget.
  FocusNode? liqChlFocusNode;
  TextEditingController? liqChlTextController;
  String? Function(BuildContext, String?)? liqChlTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    saltFocusNode?.dispose();
    saltTextController?.dispose();

    bufferFocusNode?.dispose();
    bufferTextController?.dispose();

    calciumFocusNode?.dispose();
    calciumTextController?.dispose();

    cyanuricFocusNode?.dispose();
    cyanuricTextController?.dispose();

    acidFocusNode?.dispose();
    acidTextController?.dispose();

    sdicFocusNode?.dispose();
    sdicTextController?.dispose();

    tabsFocusNode?.dispose();
    tabsTextController?.dispose();

    liqChlFocusNode?.dispose();
    liqChlTextController?.dispose();
  }
}
