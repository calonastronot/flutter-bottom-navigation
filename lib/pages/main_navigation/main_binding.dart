import 'package:bottomnav/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
