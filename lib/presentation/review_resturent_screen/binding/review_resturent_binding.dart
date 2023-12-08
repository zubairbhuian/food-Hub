import '../controller/review_resturent_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewResturentScreen.
///
/// This class ensures that the ReviewResturentController is created when the
/// ReviewResturentScreen is first loaded.
class ReviewResturentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewResturentController());
  }
}
