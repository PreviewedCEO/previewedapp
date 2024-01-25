import '/flutter_flow/flutter_flow_util.dart';
import 'work_exp_bottom_sheet_widget.dart' show WorkExpBottomSheetWidget;
import 'package:flutter/material.dart';

class WorkExpBottomSheetModel
    extends FlutterFlowModel<WorkExpBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PostitionTitle widget.
  FocusNode? postitionTitleFocusNode;
  TextEditingController? postitionTitleController;
  String? Function(BuildContext, String?)? postitionTitleControllerValidator;
  // State field(s) for Company widget.
  FocusNode? companyFocusNode;
  TextEditingController? companyController;
  String? Function(BuildContext, String?)? companyControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    postitionTitleFocusNode?.dispose();
    postitionTitleController?.dispose();

    companyFocusNode?.dispose();
    companyController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
