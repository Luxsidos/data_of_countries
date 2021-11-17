import 'package:countries/bindings/main_bindings.dart';
import 'package:countries/core/theme/app_theme.dart';
import 'package:countries/routes/app_pages.dart';
import 'package:countries/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appThemeData,
      getPages: AppPages.pages,
      initialBinding: MainBindings(),
      initialRoute: AppRoutes.home,
    );
  }
}
