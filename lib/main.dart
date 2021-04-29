import 'package:bottomnav/routes/app_pages.dart';
import 'package:bottomnav/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoute.Main,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
