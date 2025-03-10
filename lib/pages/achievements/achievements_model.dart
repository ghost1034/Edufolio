import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/add_new/add_new_widget.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'achievements_widget.dart' show AchievementsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AchievementsModel extends FlutterFlowModel<AchievementsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for addNew component.
  late AddNewModel addNewModel;

  @override
  void initState(BuildContext context) {
    addNewModel = createModel(context, () => AddNewModel());
  }

  @override
  void dispose() {
    addNewModel.dispose();
  }
}
