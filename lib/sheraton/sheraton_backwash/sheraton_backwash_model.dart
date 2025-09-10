import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sheraton_backwash_widget.dart' show SheratonBackwashWidget;
import 'package:flutter/material.dart';

class SheratonBackwashModel extends FlutterFlowModel<SheratonBackwashWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for SW1 widget.
  bool? sw1Value;
  // State field(s) for SW2 widget.
  bool? sw2Value;
  // State field(s) for SW3 widget.
  bool? sw3Value;
  // State field(s) for SW4 widget.
  bool? sw4Value;
  // State field(s) for SW5 widget.
  bool? sw5Value;
  // State field(s) for FW1 widget.
  bool? fw1Value;
  // State field(s) for FW2 widget.
  bool? fw2Value;
  // State field(s) for FW3 widget.
  bool? fw3Value;
  // State field(s) for FW4 widget.
  bool? fw4Value;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
  }
}
