import '/backend/supabase/supabase.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sea_temple_private_reports_widget.dart'
    show SeaTemplePrivateReportsWidget;
import 'package:flutter/material.dart';

class SeaTemplePrivateReportsModel
    extends FlutterFlowModel<SeaTemplePrivateReportsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  Stream<List<SeaTempleUnitsRow>>? dropDownSupabaseStream;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
  }
}
