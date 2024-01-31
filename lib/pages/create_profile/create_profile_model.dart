import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Minimum 2 characters required';
    }

    return null;
  }

  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for video widget.
  FocusNode? videoFocusNode;
  TextEditingController? videoController;
  String? Function(BuildContext, String?)? videoControllerValidator;
  String? _videoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Skills widget.
  FocusNode? skillsFocusNode;
  TextEditingController? skillsController;
  String? Function(BuildContext, String?)? skillsControllerValidator;
  String? _skillsControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Minimum 2 characters required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for salaryRange widget.
  double? salaryRangeValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CandidatesRecord? candidate;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    videoControllerValidator = _videoControllerValidator;
    skillsControllerValidator = _skillsControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();

    titleFocusNode?.dispose();
    titleController?.dispose();

    videoFocusNode?.dispose();
    videoController?.dispose();

    skillsFocusNode?.dispose();
    skillsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
