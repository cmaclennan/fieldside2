import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sheraton_villa_reports_widget.dart' show SheratonVillaReportsWidget;
import 'package:flutter/material.dart';

class SheratonVillaReportsModel
    extends FlutterFlowModel<SheratonVillaReportsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for Location widget.
  String? locationValue;
  FormFieldController<String>? locationValueController;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
  }
}
