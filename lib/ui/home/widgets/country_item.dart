import 'dart:ui';

import 'package:countries/controller/home/home_controller.dart';
import 'package:countries/core/theme/app_colors.dart';
import 'package:countries/core/theme/app_text_style.dart';
import 'package:countries/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryItem extends StatelessWidget {
  final int index;
  const CountryItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        controller.getDetail(controller: controller, index: index);
        return controller.country != "Unknown"
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white60),
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(14.0),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0.0, 1.0),
                            color: AppColors.mainColor.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: AppColors.background,
                          backgroundImage: NetworkImage(controller.img),
                        ),
                        title: Text(
                          controller.country,
                          style: AppTextStyle.title,
                        ),
                        subtitle: Text(
                          controller.city,
                          style: AppTextStyle.subTitles,
                        ),
                        trailing: SizedBox(
                          height: 100.0,
                          width: 100.0,
                          child: Row(
                            children: [
                              Expanded(
                                child: CupertinoSwitch(
                                  value: controller.independent,
                                  onChanged: (e) {},
                                ),
                                flex: 4,
                              ),
                              Expanded(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18.0,
                                    color: const Color(0xFFFFFFFF)
                                        .withOpacity(0.7),
                                  ),
                                ),
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.detail,
                            arguments: {"index": index},
                          );
                        },
                      ),
                    ),
                  ),
                ),
              )
            : Container();
      },
    );
  }
}
