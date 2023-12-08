import '../controller/side_menu_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SideMenuScreen.
///
/// This class ensures that the SideMenuController is created when the
/// SideMenuScreen is first loaded.
class SideMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SideMenuController());
  }
}
