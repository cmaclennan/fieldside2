import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'primary_pool_chemicals_widget.dart' show PrimaryPoolChemicalsWidget;
import 'package:flutter/material.dart';

class PrimaryPoolChemicalsModel
    extends FlutterFlowModel<PrimaryPoolChemicalsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for Salt widget.
  FocusNode? saltFocusNode;
  TextEditingController? saltTextController;
  String? Function(BuildContext, String?)? saltTextControllerValidator;
  // State field(s) for PH widget.
  FocusNode? phFocusNode;
  TextEditingController? phTextController;
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
    locationFocusNode?.dispose();
    locationTextController?.dispose();

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
