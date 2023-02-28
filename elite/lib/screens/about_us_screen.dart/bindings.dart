import 'package:elite/screens/about_us_screen.dart/controller.dart';
import 'package:get/get.dart';

class AboutUsBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AboutUsController>(() => AboutUsController());
  }
}
