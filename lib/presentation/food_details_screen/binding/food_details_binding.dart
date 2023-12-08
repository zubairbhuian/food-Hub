import '../controller/food_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FoodDetailsScreen.
///
/// This class ensures that the FoodDetailsController is created when the
/// FoodDetailsScreen is first loaded.
class FoodDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodDetailsController());
  }
}
