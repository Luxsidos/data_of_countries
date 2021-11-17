import 'package:countries/controller/home/home_controller.dart';
import 'package:countries/data/provider/api_client.dart';
import 'package:countries/data/repository/home/home_repository.dart';
import 'package:get/get.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        repository: HomeRepository(
          apiClient: ApiClient.getInstance(),
        ),
      ),
      fenix: true,
    );
  }
}
