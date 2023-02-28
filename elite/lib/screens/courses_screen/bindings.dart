import 'package:elite/screens/courses_screen/controller.dart';
import 'package:get/get.dart';

class CoursesScreenBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CoursesScreenController>(() => CoursesScreenController());
  }
}
