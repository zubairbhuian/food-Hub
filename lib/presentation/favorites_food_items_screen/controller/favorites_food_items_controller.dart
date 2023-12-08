import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/favorites_food_items_screen/models/favorites_food_items_model.dart';

/// A controller class for the FavoritesFoodItemsScreen.
///
/// This class manages the state of the FavoritesFoodItemsScreen, including the
/// current favoritesFoodItemsModelObj
class FavoritesFoodItemsController extends GetxController {
  Rx<FavoritesFoodItemsModel> favoritesFoodItemsModelObj =
      FavoritesFoodItemsModel().obs;
}
