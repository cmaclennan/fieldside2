import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'job_create_widget.dart' show JobCreateWidget;
import 'package:flutter/material.dart';

class JobCreateModel extends FlutterFlowModel<JobCreateWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Location widget.
  String? locationValue;
  FormFieldController<String>? locationValueController;
  // State field(s) for SeaTemplePrivate widget.
  FocusNode? seaTemplePrivateFocusNode;
  TextEditingController? seaTemplePrivateTextController;
  String? Function(BuildContext, String?)?
      seaTemplePrivateTextControllerValidator;
  // State field(s) for OtherLoc widget.
  FocusNode? otherLocFocusNode;
  TextEditingController? otherLocTextController;
  String? Function(BuildContext, String?)? otherLocTextControllerValidator;
  // State field(s) for Details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;
  // State field(s) for Status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    seaTemplePrivateFocusNode?.dispose();
    seaTemplePrivateTextController?.dispose();

    otherLocFocusNode?.dispose();
    otherLocTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();
  }
}
