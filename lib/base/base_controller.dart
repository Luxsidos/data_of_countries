import 'package:get/get.dart';

class BaseController extends GetxController {
  bool isLoading = false;

  void setLoading(bool value) {
    isLoading = value;
    update();
  }
}
