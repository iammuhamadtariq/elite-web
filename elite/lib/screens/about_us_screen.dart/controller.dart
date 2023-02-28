import 'package:elite/screens/about_us_screen.dart/state.dart';
import 'package:get/get.dart';

class AboutUsController extends GetxController {
  AboutUsController();
  final title = "Elite Training & Consultancy";
  final state = AboutUsState();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("Home Page Controller ");
  }
}
