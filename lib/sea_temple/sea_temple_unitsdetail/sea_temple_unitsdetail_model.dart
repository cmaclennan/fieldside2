import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sea_temple_unitsdetail_widget.dart' show SeaTempleUnitsdetailWidget;
import 'package:flutter/material.dart';

class SeaTempleUnitsdetailModel
    extends FlutterFlowModel<SeaTempleUnitsdetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for PoolTabBar widget.
  TabController? poolTabBarController;
  int get poolTabBarCurrentIndex =>
      poolTabBarController != null ? poolTabBarController!.index : 0;
  int get poolTabBarPreviousIndex =>
      poolTabBarController != null ? poolTabBarController!.previousIndex : 0;

  // State field(s) for SpaTabBar widget.
  TabController? spaTabBarController;
  int get spaTabBarCurrentIndex =>
      spaTabBarController != null ? spaTabBarController!.index : 0;
  int get spaTabBarPreviousIndex =>
      spaTabBarController != null ? spaTabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    poolTabBarController?.dispose();
    spaTabBarController?.dispose();
  }
}
