// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future deleteAreaWithAchievements(DocumentReference collection) async {
  // Delete subcollection of collection, then delete collection itself
  // Delete all documents in the collection

  // Could be revamped later not to be so specific to area and achievements
  // Assumes collection has subcollection achievements and achievements has no subcollections
  // Improvement needed!

  await collection.collection('achievements').get().then((querySnapshot) {
    querySnapshot.docs.forEach((doc) async {
      await doc.reference.delete();
    });
  });

  // Delete the collection itself
  await collection.delete();
}
