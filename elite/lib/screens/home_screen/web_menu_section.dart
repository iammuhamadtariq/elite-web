import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:elite/common/app_colors.dart';
import 'package:elite/common/consultancy_dropdown.dart';

import 'package:elite/screens/home_screen/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/courses_dropdown.dart';
import '../../common/styles.dart';

class WebMenuBar extends StatelessWidget {
  const WebMenuBar({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                screenWidth > 1000
                    ? Container(
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () => Get.toNamed("/"),
                              child: Text(
                                "Home",
                                style: menuTextStyle,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "|",
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CoursesDropdown(),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "|",
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ConsultancyDropdown(),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "|",
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Get.toNamed("/about_us"),
                              child: const Text(
                                "About us",
                                style: menuTextStyle,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "|",
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => Get.toNamed("/contact_page"),
                              child: const Text(
                                "Contact",
                                style: menuTextStyle,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
