import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/review_resturent_screen/models/review_resturent_model.dart';

/// A controller class for the ReviewResturentScreen.
///
/// This class manages the state of the ReviewResturentScreen, including the
/// current reviewResturentModelObj
class ReviewResturentController extends GetxController {
  Rx<ReviewResturentModel> reviewResturentModelObj = ReviewResturentModel().obs;
}
