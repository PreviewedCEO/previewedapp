import '/flutter_flow/flutter_flow_util.dart';
import 'm_a_i_n_applied_jobs_widget.dart' show MAINAppliedJobsWidget;
import 'package:flutter/material.dart';

class MAINAppliedJobsModel extends FlutterFlowModel<MAINAppliedJobsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController1?.dispose();
    tabBarController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
