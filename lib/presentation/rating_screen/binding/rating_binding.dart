import '../controller/rating_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RatingScreen.
///
/// This class ensures that the RatingController is created when the
/// RatingScreen is first loaded.
class RatingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RatingController());
  }
}
