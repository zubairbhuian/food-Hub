import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/resset_password_screen/models/resset_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RessetPasswordScreen.
///
/// This class manages the state of the RessetPasswordScreen, including the
/// current ressetPasswordModelObj
class RessetPasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  Rx<RessetPasswordModel> ressetPasswordModelObj = RessetPasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
  }
}
