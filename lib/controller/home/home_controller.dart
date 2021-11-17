import 'package:countries/base/base_controller.dart';
import 'package:countries/data/moduls/all/data_response.dart';
import 'package:countries/data/repository/home/home_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final HomeRepository repository;
  HomeController({required this.repository});

  List<DatasResponse> _allDatas = [];
  String country = "",
      city = "",
      img = "",
      official = "",
      region = "",
      fifa = "",
      coatOfArms = "",
      startOfWeek = "",
      timezones = "";
  bool independent = true;

  @override
  void onReady() {
    super.onReady();
    getAll();
  }

  Future<void> getAll() async {
    setLoading(true);
    final result = await repository.getAll();
    if (result is List<DatasResponse>) {
      _allDatas = result;
      update();
    } else {
      debugPrint("ERROR!!!");
    }
    setLoading(false);
  }

  getDetail({required HomeController controller, required int index}) {
    try {
      img = controller.allDatas[index].flags!.png!;
      country = controller.allDatas[index].name!.common!;
      city = controller.allDatas[index].capital![0];
      independent = controller.allDatas[index].independent!;
      official = controller.allDatas[index].name!.official!;
      region = controller.allDatas[index].region!;
      fifa = controller.allDatas[index].fifa!;
      coatOfArms = controller.allDatas[index].coatOfArms!.png!;
      startOfWeek = controller.allDatas[index].startOfWeek!;
      timezones = controller.allDatas[index].timezones![0];
    } catch (e) {
      img =
          "https://i1.wp.com/saedx.com/blog/wp-content/uploads/2019/01/saedx-blog-featured-70.jpg?fit=1200%2C500&ssl=1";
      country = "Unknown";
      city = "Unknown";
      official = "Unknown";
      region = "Unkown";
      fifa = "Unkown";
      coatOfArms =
          "https://i1.wp.com/saedx.com/blog/wp-content/uploads/2019/01/saedx-blog-featured-70.jpg?fit=1200%2C500&ssl=1";
      startOfWeek = "Unknown";
      timezones = "Unknown";
      independent = false;
    }
  }

  List<DatasResponse> get allDatas => _allDatas;
}
