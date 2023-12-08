import '../controller/favorites_food_items_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FavoritesFoodItemsScreen.
///
/// This class ensures that the FavoritesFoodItemsController is created when the
/// FavoritesFoodItemsScreen is first loaded.
class FavoritesFoodItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoritesFoodItemsController());
  }
}
