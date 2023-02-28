import 'package:elite/screens/business_solution/controller.dart';
import 'package:get/get.dart';

class BusinessSolutionBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BusinessSolutionController>(() => BusinessSolutionController());
  }
}
