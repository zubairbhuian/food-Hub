import '../controller/resset_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RessetPasswordScreen.
///
/// This class ensures that the RessetPasswordController is created when the
/// RessetPasswordScreen is first loaded.
class RessetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RessetPasswordController());
  }
}
