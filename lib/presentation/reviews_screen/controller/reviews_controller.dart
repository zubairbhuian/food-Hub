import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/reviews_screen/models/reviews_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReviewsScreen.
///
/// This class manages the state of the ReviewsScreen, including the
/// current reviewsModelObj
class ReviewsController extends GetxController {
  TextEditingController reviewOneController = TextEditingController();

  Rx<ReviewsModel> reviewsModelObj = ReviewsModel().obs;

  @override
  void onClose() {
    super.onClose();
    reviewOneController.dispose();
  }
}
