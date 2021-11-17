import 'dart:math';
import 'dart:ui';
import 'package:countries/controller/home/home_controller.dart';
import 'package:countries/core/theme/app_colors.dart';
import 'package:countries/ui/home/widgets/country_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.white38,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(12.0),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/${Random().nextInt(9)}.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return controller.isLoading
                ? const Center(
                    child: CircularProgressIndicator(color: Colors.white70),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      vertical: 82.0,
                      horizontal: 12.0,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CountryItem(index: index);
                    },
                    itemCount: controller.allDatas.length,
                  );
          },
        ),
      ),
    );
  }
}
