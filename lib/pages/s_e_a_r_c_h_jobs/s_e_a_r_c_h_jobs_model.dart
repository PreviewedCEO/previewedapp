import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's_e_a_r_c_h_jobs_widget.dart' show SEARCHJobsWidget;
import 'package:flutter/material.dart';

class SEARCHJobsModel extends FlutterFlowModel<SEARCHJobsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Algolia Search Results from action on IconButton
  List<JobPostsRecord>? algoliaSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
