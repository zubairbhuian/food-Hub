import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/welcome_screen/models/welcome_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WelcomeScreen.
///
/// This class manages the state of the WelcomeScreen, including the
/// current welcomeModelObj
class WelcomeController extends GetxController {
  TextEditingController googleEditTextController = TextEditingController();

  Rx<WelcomeModel> welcomeModelObj = WelcomeModel().obs;

  @override
  void onClose() {
    super.onClose();
    googleEditTextController.dispose();
  }
}
