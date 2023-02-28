import 'package:elite/screens/home_screen/controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
