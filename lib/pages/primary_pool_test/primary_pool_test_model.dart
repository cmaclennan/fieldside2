import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'primary_pool_test_widget.dart' show PrimaryPoolTestWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PrimaryPoolTestModel extends FlutterFlowModel<PrimaryPoolTestWidget> {
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
  bool isDataUploading_uploadData175 = false;
  FFUploadedFile uploadedLocalFile_uploadData175 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData175 = '';

  // State field(s) for Backwash widget.
  bool? backwashValue;

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
  }
}
