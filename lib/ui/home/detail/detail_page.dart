import 'dart:math';
import 'dart:ui';

import 'package:countries/controller/home/home_controller.dart';
import 'package:countries/core/theme/app_colors.dart';
import 'package:countries/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) {
          int index = Get.arguments["index"];

          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/${Random().nextInt(9)}.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: GetBuilder<HomeController>(builder: (controller) {
              controller.getDetail(controller: controller, index: index);
              return CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    expandedHeight: 240.0,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        controller.country,
                        style: AppTextStyle.countryName,
                      ),
                      titlePadding: const EdgeInsets.all(12.0),
                      background: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(controller.img),
                              fit: BoxFit.cover),
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(12.0),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black26,
                                Colors.black12,
                                Colors.black.withOpacity(0.0),
                                Colors.black.withOpacity(0.0),
                                Colors.black.withOpacity(0.0),
                                Colors.black.withOpacity(0.0),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                            borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(12.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ClipRRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white60),
                                  color: Colors.white38,
                                  borderRadius: BorderRadius.circular(14.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0.0, 1.0),
                                      color:
                                          AppColors.mainColor.withOpacity(0.1),
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      contentPadding: const EdgeInsets.all(0.0),
                                      title: Text(
                                        "Davlat: ${controller.country}",
                                        style: AppTextStyle.title,
                                      ),
                                      subtitle: Text(
                                        "Shahar: ${controller.city}",
                                        style: AppTextStyle.subTitles,
                                      ),
                                    ),
                                    Text(
                                      controller.independent
                                          ? "BMTga a'zo"
                                          : "BMTga a'zo emas",
                                      style: AppTextStyle.title,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12.0),
                                      child: Text(
                                        "Rasmiy nomi: ${controller.official}",
                                        style: AppTextStyle.title,
                                      ),
                                    ),
                                    Text(
                                      "Mintaqa: ${controller.region}",
                                      style: AppTextStyle.title,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Text(
                                        "Fifa: ${controller.fifa}",
                                        style: AppTextStyle.title,
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Davlatining gerbi:",
                                          style: AppTextStyle.title,
                                        ),
                                        const Spacer(),
                                        Expanded(
                                          child: Image.network(
                                            controller.coatOfArms,
                                            height: 80.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Hafta boshi: ${controller.startOfWeek}",
                                      style: AppTextStyle.title,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12.0),
                                      child: Text(
                                        "Vaqt zonalari: ${controller.timezones}",
                                        style: AppTextStyle.title,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          );
        },
      ),
    );
  }
}
