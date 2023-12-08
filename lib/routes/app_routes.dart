import 'package:zubair_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:zubair_s_application1/presentation/splash_screen/binding/splash_binding.dart';
import 'package:zubair_s_application1/presentation/welcome_screen/welcome_screen.dart';
import 'package:zubair_s_application1/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:zubair_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:zubair_s_application1/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:zubair_s_application1/presentation/login_screen/login_screen.dart';
import 'package:zubair_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:zubair_s_application1/presentation/vefification_code_screen/vefification_code_screen.dart';
import 'package:zubair_s_application1/presentation/vefification_code_screen/binding/vefification_code_binding.dart';
import 'package:zubair_s_application1/presentation/resset_password_screen/resset_password_screen.dart';
import 'package:zubair_s_application1/presentation/resset_password_screen/binding/resset_password_binding.dart';
import 'package:zubair_s_application1/presentation/phone_registration_screen/phone_registration_screen.dart';
import 'package:zubair_s_application1/presentation/phone_registration_screen/binding/phone_registration_binding.dart';
import 'package:zubair_s_application1/presentation/side_menu_screen/side_menu_screen.dart';
import 'package:zubair_s_application1/presentation/side_menu_screen/binding/side_menu_binding.dart';
import 'package:zubair_s_application1/presentation/home_screen/home_screen.dart';
import 'package:zubair_s_application1/presentation/home_screen/binding/home_binding.dart';
import 'package:zubair_s_application1/presentation/food_details_screen/food_details_screen.dart';
import 'package:zubair_s_application1/presentation/food_details_screen/binding/food_details_binding.dart';
import 'package:zubair_s_application1/presentation/category_screen/category_screen.dart';
import 'package:zubair_s_application1/presentation/category_screen/binding/category_binding.dart';
import 'package:zubair_s_application1/presentation/cart_screen/cart_screen.dart';
import 'package:zubair_s_application1/presentation/cart_screen/binding/cart_binding.dart';
import 'package:zubair_s_application1/presentation/my_orders_upcoming_screen/my_orders_upcoming_screen.dart';
import 'package:zubair_s_application1/presentation/my_orders_upcoming_screen/binding/my_orders_upcoming_binding.dart';
import 'package:zubair_s_application1/presentation/favorites_food_items_screen/favorites_food_items_screen.dart';
import 'package:zubair_s_application1/presentation/favorites_food_items_screen/binding/favorites_food_items_binding.dart';
import 'package:zubair_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:zubair_s_application1/presentation/profile_screen/binding/profile_binding.dart';
import 'package:zubair_s_application1/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:zubair_s_application1/presentation/add_new_address_screen/binding/add_new_address_binding.dart';
import 'package:zubair_s_application1/presentation/rating_screen/rating_screen.dart';
import 'package:zubair_s_application1/presentation/rating_screen/binding/rating_binding.dart';
import 'package:zubair_s_application1/presentation/reviews_screen/reviews_screen.dart';
import 'package:zubair_s_application1/presentation/reviews_screen/binding/reviews_binding.dart';
import 'package:zubair_s_application1/presentation/review_resturent_screen/review_resturent_screen.dart';
import 'package:zubair_s_application1/presentation/review_resturent_screen/binding/review_resturent_binding.dart';
import 'package:zubair_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:zubair_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String vefificationCodeScreen = '/vefification_code_screen';

  static const String ressetPasswordScreen = '/resset_password_screen';

  static const String phoneRegistrationScreen = '/phone_registration_screen';

  static const String sideMenuScreen = '/side_menu_screen';

  static const String homeScreen = '/home_screen';

  static const String foodDetailsScreen = '/food_details_screen';

  static const String categoryScreen = '/category_screen';

  static const String cartScreen = '/cart_screen';

  static const String myOrdersUpcomingScreen = '/my_orders_upcoming_screen';

  static const String favoritesFoodItemsScreen = '/favorites_food_items_screen';

  static const String profileScreen = '/profile_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String ratingScreen = '/rating_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String reviewResturentScreen = '/review_resturent_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: vefificationCodeScreen,
      page: () => VefificationCodeScreen(),
      bindings: [
        VefificationCodeBinding(),
      ],
    ),
    GetPage(
      name: ressetPasswordScreen,
      page: () => RessetPasswordScreen(),
      bindings: [
        RessetPasswordBinding(),
      ],
    ),
    GetPage(
      name: phoneRegistrationScreen,
      page: () => PhoneRegistrationScreen(),
      bindings: [
        PhoneRegistrationBinding(),
      ],
    ),
    GetPage(
      name: sideMenuScreen,
      page: () => SideMenuScreen(),
      bindings: [
        SideMenuBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: foodDetailsScreen,
      page: () => FoodDetailsScreen(),
      bindings: [
        FoodDetailsBinding(),
      ],
    ),
    GetPage(
      name: categoryScreen,
      page: () => CategoryScreen(),
      bindings: [
        CategoryBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: myOrdersUpcomingScreen,
      page: () => MyOrdersUpcomingScreen(),
      bindings: [
        MyOrdersUpcomingBinding(),
      ],
    ),
    GetPage(
      name: favoritesFoodItemsScreen,
      page: () => FavoritesFoodItemsScreen(),
      bindings: [
        FavoritesFoodItemsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: addNewAddressScreen,
      page: () => AddNewAddressScreen(),
      bindings: [
        AddNewAddressBinding(),
      ],
    ),
    GetPage(
      name: ratingScreen,
      page: () => RatingScreen(),
      bindings: [
        RatingBinding(),
      ],
    ),
    GetPage(
      name: reviewsScreen,
      page: () => ReviewsScreen(),
      bindings: [
        ReviewsBinding(),
      ],
    ),
    GetPage(
      name: reviewResturentScreen,
      page: () => ReviewResturentScreen(),
      bindings: [
        ReviewResturentBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
