import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sea_temple_startday_widget.dart' show SeaTempleStartdayWidget;
import 'package:flutter/material.dart';

class SeaTempleStartdayModel extends FlutterFlowModel<SeaTempleStartdayWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for WaterMeter widget.
  FocusNode? waterMeterFocusNode;
  TextEditingController? waterMeterTextController;
  String? Function(BuildContext, String?)? waterMeterTextControllerValidator;
  // State field(s) for AquaPH widget.
  FocusNode? aquaPHFocusNode;
  TextEditingController? aquaPHTextController;
  String? Function(BuildContext, String?)? aquaPHTextControllerValidator;
  // State field(s) for AquaORP widget.
  FocusNode? aquaORPFocusNode;
  TextEditingController? aquaORPTextController;
  String? Function(BuildContext, String?)? aquaORPTextControllerValidator;
  // State field(s) for filter widget.
  bool? filterValue;
  // State field(s) for chemicals widget.
  bool? chemicalsValue;
  // State field(s) for balance widget.
  bool? balanceValue;
  // State field(s) for gauges widget.
  bool? gaugesValue;
  // State field(s) for hammerhead widget.
  bool? hammerheadValue;
  // State field(s) for logbook widget.
  bool? logbookValue;
  // State field(s) for bookings widget.
  bool? bookingsValue;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    waterMeterFocusNode?.dispose();
    waterMeterTextController?.dispose();

    aquaPHFocusNode?.dispose();
    aquaPHTextController?.dispose();

    aquaORPFocusNode?.dispose();
    aquaORPTextController?.dispose();
  }
}
