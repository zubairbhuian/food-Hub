import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/food_details_screen/models/food_details_model.dart';

/// A controller class for the FoodDetailsScreen.
///
/// This class manages the state of the FoodDetailsScreen, including the
/// current foodDetailsModelObj
class FoodDetailsController extends GetxController {
  Rx<FoodDetailsModel> foodDetailsModelObj = FoodDetailsModel().obs;
}
