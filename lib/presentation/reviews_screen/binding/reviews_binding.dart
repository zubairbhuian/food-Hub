import '../controller/reviews_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewsScreen.
///
/// This class ensures that the ReviewsController is created when the
/// ReviewsScreen is first loaded.
class ReviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewsController());
  }
}
