import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sea_temple_chemicals_widget.dart' show SeaTempleChemicalsWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SeaTempleChemicalsModel
    extends FlutterFlowModel<SeaTempleChemicalsWidget> {
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
  // State field(s) for LiquidChlorine widget.
  FocusNode? liquidChlorineFocusNode;
  TextEditingController? liquidChlorineTextController;
  String? Function(BuildContext, String?)?
      liquidChlorineTextControllerValidator;
  // State field(s) for ChlorineTabs widget.
  FocusNode? chlorineTabsFocusNode;
  TextEditingController? chlorineTabsTextController;
  String? Function(BuildContext, String?)? chlorineTabsTextControllerValidator;
  // State field(s) for CalHypo widget.
  FocusNode? calHypoFocusNode;
  TextEditingController? calHypoTextController;
  String? Function(BuildContext, String?)? calHypoTextControllerValidator;
  // State field(s) for Clarifier widget.
  FocusNode? clarifierFocusNode;
  TextEditingController? clarifierTextController;
  String? Function(BuildContext, String?)? clarifierTextControllerValidator;
  // State field(s) for Phosphate widget.
  FocusNode? phosphateFocusNode;
  TextEditingController? phosphateTextController;
  String? Function(BuildContext, String?)? phosphateTextControllerValidator;

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

    alkalinityFocusNode?.dispose();
    alkalinityTextController?.dispose();

    calciumFocusNode?.dispose();
    calciumTextController?.dispose();

    cyanuricFocusNode?.dispose();
    cyanuricTextController?.dispose();

    liquidChlorineFocusNode?.dispose();
    liquidChlorineTextController?.dispose();

    chlorineTabsFocusNode?.dispose();
    chlorineTabsTextController?.dispose();

    calHypoFocusNode?.dispose();
    calHypoTextController?.dispose();

    clarifierFocusNode?.dispose();
    clarifierTextController?.dispose();

    phosphateFocusNode?.dispose();
    phosphateTextController?.dispose();
  }
}
