import 'package:countries/routes/app_routes.dart';
import 'package:countries/ui/home/detail/detail_page.dart';
import 'package:countries/ui/home/home_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.home,
        page: () => const HomePage(),
        transition: Transition.cupertino),
    GetPage(
        name: AppRoutes.detail,
        page: () => const DetailPage(),
        transition: Transition.cupertino),
  ];
}
