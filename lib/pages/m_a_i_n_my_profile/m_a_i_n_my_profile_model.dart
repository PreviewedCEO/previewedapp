import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'm_a_i_n_my_profile_widget.dart' show MAINMyProfileWidget;
import 'package:flutter/material.dart';

class MAINMyProfileModel extends FlutterFlowModel<MAINMyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in TabBar widget.
  CompaniesRecord? myCompany;
  // State field(s) for company widget.
  FocusNode? companyFocusNode;
  TextEditingController? companyController;
  String? Function(BuildContext, String?)? companyControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController1?.dispose();
    companyFocusNode?.dispose();
    companyController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    tabBarController2?.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    textFieldFocusNode3?.dispose();
    textController5?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
