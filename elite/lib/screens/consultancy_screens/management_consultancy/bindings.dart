import './controller.dart';
import 'package:get/get.dart';

class ISOConsultancyBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ISOConsultancyController>(() => ISOConsultancyController());
  }
}
