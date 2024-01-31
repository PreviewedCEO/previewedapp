import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_job_widget.dart' show CreateJobWidget;
import 'package:flutter/material.dart';

class CreateJobModel extends FlutterFlowModel<CreateJobWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for shortDescription widget.
  FocusNode? shortDescriptionFocusNode;
  TextEditingController? shortDescriptionController;
  String? Function(BuildContext, String?)? shortDescriptionControllerValidator;
  // State field(s) for DayIntheLife widget.
  FocusNode? dayIntheLifeFocusNode;
  TextEditingController? dayIntheLifeController;
  String? Function(BuildContext, String?)? dayIntheLifeControllerValidator;
  // State field(s) for preferredSkills widget.
  FocusNode? preferredSkillsFocusNode;
  TextEditingController? preferredSkillsController;
  String? Function(BuildContext, String?)? preferredSkillsControllerValidator;
  // State field(s) for salaryRange widget.
  double? salaryRangeValue;
  // State field(s) for experienceLevel widget.
  String? experienceLevelValue;
  FormFieldController<String>? experienceLevelValueController;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    shortDescriptionFocusNode?.dispose();
    shortDescriptionController?.dispose();

    dayIntheLifeFocusNode?.dispose();
    dayIntheLifeController?.dispose();

    preferredSkillsFocusNode?.dispose();
    preferredSkillsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
