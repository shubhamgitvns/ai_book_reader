import 'package:ai_book_raeder/utilty/route_name.dart';
import 'package:get/get.dart';

import '../view/screens/basic_info_screen.dart';
import '../view/screens/education_screen.dart';
import '../view/screens/splash_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: RouteNames.splash, page: () => const SplashScreen()),
    GetPage(name: RouteNames.basicInfo, page: () => const BasicInfoScreen()),
    GetPage(name: RouteNames.education, page: () => const EducationScreen()),
  ];
}
