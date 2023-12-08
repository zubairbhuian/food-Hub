import '../controller/category_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryScreen.
///
/// This class ensures that the CategoryController is created when the
/// CategoryScreen is first loaded.
class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryController());
  }
}
