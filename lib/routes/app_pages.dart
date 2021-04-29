import 'package:bottomnav/pages/main_navigation/main_binding.dart';
import 'package:bottomnav/pages/main_navigation/main_page.dart';
import 'package:get/get.dart';
import 'package:bottomnav/pages/home/home_page.dart';
import 'package:bottomnav/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoute.Main,
      page: () => MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRoute.Home,
      page: () => HomePage(),
      binding: MainBinding(),
    )
  ];
}
