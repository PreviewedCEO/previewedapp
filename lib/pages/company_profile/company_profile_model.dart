import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'company_profile_widget.dart' show CompanyProfileWidget;
import 'package:flutter/material.dart';

class CompanyProfileModel extends FlutterFlowModel<CompanyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for companyName widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameController;
  String? Function(BuildContext, String?)? companyNameControllerValidator;
  String? _companyNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Minimum 2 characters required';
    }

    return null;
  }

  // State field(s) for companyVideo widget.
  FocusNode? companyVideoFocusNode;
  TextEditingController? companyVideoController;
  String? Function(BuildContext, String?)? companyVideoControllerValidator;
  String? _companyVideoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteController;
  String? Function(BuildContext, String?)? websiteControllerValidator;
  String? _websiteControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return 'Please enter a valid website';
    }
    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  String? _descriptionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Minimum 2 characters required';
    }

    return null;
  }

  // State field(s) for companySize widget.
  String? companySizeValue;
  FormFieldController<String>? companySizeValueController;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CompaniesRecord? myCompany;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    companyNameControllerValidator = _companyNameControllerValidator;
    companyVideoControllerValidator = _companyVideoControllerValidator;
    websiteControllerValidator = _websiteControllerValidator;
    descriptionControllerValidator = _descriptionControllerValidator;
  }

  @override
  void dispose() {
    companyNameFocusNode?.dispose();
    companyNameController?.dispose();

    companyVideoFocusNode?.dispose();
    companyVideoController?.dispose();

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
