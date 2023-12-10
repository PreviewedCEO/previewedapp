import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'm_a_i_n_candidates_jobs_widget.dart' show MAINCandidatesJobsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MAINCandidatesJobsModel
    extends FlutterFlowModel<MAINCandidatesJobsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  JobPostsRecord? jobs;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  AppliedJobsRecord? appliedJobs;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tabBarController1?.dispose();
    tabBarController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
