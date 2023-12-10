// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction() async {
  // Store result in collection
// Define a new collection reference
  CollectionReference customActions =
      FirebaseFirestore.instance.collection('customActions');

  try {
    // Add a new document to the collection with a generated ID
    await customActions.add({
      'name': 'Custom Action',
      'description': 'This is a custom action',
      'date': DateTime.now(),
    });
    return 'Custom action added successfully';
  } catch (e) {
    return 'Error adding custom action: $e';
  }
}
