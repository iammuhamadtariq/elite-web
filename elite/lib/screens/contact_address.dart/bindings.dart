import 'package:elite/screens/contact_address.dart/controller.dart';
import 'package:get/get.dart';

class ContactBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AddressController>(() => AddressController());
  }
}
