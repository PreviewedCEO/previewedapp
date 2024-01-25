import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_company_profile_widget.dart' show EditCompanyProfileWidget;
import 'package:flutter/material.dart';

class EditCompanyProfileModel
    extends FlutterFlowModel<EditCompanyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteController;
  String? Function(BuildContext, String?)? websiteControllerValidator;
  String? _websiteControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return 'Has to be a valid website.';
    }
    return null;
  }

  // State field(s) for companySize widget.
  String? companySizeValue;
  FormFieldController<String>? companySizeValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    websiteControllerValidator = _websiteControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();

    websiteFocusNode?.dispose();
    websiteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
