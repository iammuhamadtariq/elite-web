import 'package:elite/screens/contact_screen/state.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  ContactController();
  final title = "Elite Training & Consultancy";
  final state = ContactState();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("Home Page Controller ");
  }
}
