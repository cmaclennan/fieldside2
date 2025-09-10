import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for newPass widget.
  FocusNode? newPassFocusNode;
  TextEditingController? newPassTextController;
  late bool newPassVisibility;
  String? Function(BuildContext, String?)? newPassTextControllerValidator;
  // State field(s) for confnewPass widget.
  FocusNode? confnewPassFocusNode;
  TextEditingController? confnewPassTextController;
  late bool confnewPassVisibility;
  String? Function(BuildContext, String?)? confnewPassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    newPassVisibility = false;
    confnewPassVisibility = false;
  }

  @override
  void dispose() {
    newPassFocusNode?.dispose();
    newPassTextController?.dispose();

    confnewPassFocusNode?.dispose();
    confnewPassTextController?.dispose();
  }
}
