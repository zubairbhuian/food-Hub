import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController googlevalueEditTextController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    fullNameEditTextController.dispose();
    emailController.dispose();
    passwordEditTextController.dispose();
    googlevalueEditTextController.dispose();
  }
}
