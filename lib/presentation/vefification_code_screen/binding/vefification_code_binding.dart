import '../controller/vefification_code_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VefificationCodeScreen.
///
/// This class ensures that the VefificationCodeController is created when the
/// VefificationCodeScreen is first loaded.
class VefificationCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VefificationCodeController());
  }
}
