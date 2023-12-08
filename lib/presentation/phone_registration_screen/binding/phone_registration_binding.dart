import '../controller/phone_registration_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PhoneRegistrationScreen.
///
/// This class ensures that the PhoneRegistrationController is created when the
/// PhoneRegistrationScreen is first loaded.
class PhoneRegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneRegistrationController());
  }
}
