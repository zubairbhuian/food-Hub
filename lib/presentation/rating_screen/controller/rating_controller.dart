import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/rating_screen/models/rating_model.dart';

/// A controller class for the RatingScreen.
///
/// This class manages the state of the RatingScreen, including the
/// current ratingModelObj
class RatingController extends GetxController {
  Rx<RatingModel> ratingModelObj = RatingModel().obs;
}
