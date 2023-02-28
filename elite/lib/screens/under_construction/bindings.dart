import 'package:elite/screens/under_construction/controller.dart';
import 'package:get/get.dart';

class MaintenanceBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MaintenanceController>(() => MaintenanceController());
  }
}
