import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sea_temple_backwash_widget.dart' show SeaTempleBackwashWidget;
import 'package:flutter/material.dart';

class SeaTempleBackwashModel extends FlutterFlowModel<SeaTempleBackwashWidget> {
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

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
  }
}
