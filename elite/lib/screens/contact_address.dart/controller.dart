import 'package:elite/screens/contact_address.dart/state.dart';
import 'package:get/get.dart';

class AddressController extends GetxController {
  AddressController();
  final title = "Elite Training & Consultancy";
  final state = AddressState();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("Home Page Controller ");
  }
}
