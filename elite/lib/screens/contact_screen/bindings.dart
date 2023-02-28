import 'package:elite/screens/contact_screen/controller.dart';
import 'package:get/get.dart';

class AddressBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ContactController>(() => ContactController());
  }
}
