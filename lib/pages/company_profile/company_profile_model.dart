import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'company_profile_widget.dart' show CompanyProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompanyProfileModel extends FlutterFlowModel<CompanyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for companyName widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameController;
  String? Function(BuildContext, String?)? companyNameControllerValidator;
  // State field(s) for website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteController;
  String? Function(BuildContext, String?)? websiteControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for companySize widget.
  String? companySizeValue;
  FormFieldController<String>? companySizeValueController;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    companyNameFocusNode?.dispose();
    companyNameController?.dispose();

    websiteFocusNode?.dispose();
    websiteController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    locationFocusNode?.dispose();
    locationController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
