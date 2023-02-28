import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/styles.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: CachedNetworkImage(
                  imageUrl: 'http://www.eliteqatar.qa/staticfiles/logo.png',
                  height: 50,
                  placeholder: (context, url) => Container(
                      height: 20,
                      width: 20,
                      child: const Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
              onTap: () => Get.toNamed("/"),
              child: const Text("Home", style: drawerTextStyles)),
          const Text("Courses", style: drawerTextStyles),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                InkWell(
                    onTap: () => Get.toNamed('/courses'),
                    child: const Text(
                      "HSE Courses",
                      style: drawerTextStyles,
                    )),
                const SizedBox(height: 8),
                InkWell(
                    onTap: () => Get.toNamed('/maintain_page'),
                    child: const Text(
                      "IT Courses",
                      style: drawerTextStyles,
                    )),
                const SizedBox(height: 8),
                InkWell(
                    onTap: () => Get.toNamed('/maintain_page'),
                    child: const Text(
                      "Management Courses",
                      style: drawerTextStyles,
                    )),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const Text("Consultancy", style: drawerTextStyles),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                InkWell(
                    onTap: () => Get.toNamed('/maintain_page'),
                    child: const Text(
                      "Recruitement Consultancy",
                      style: drawerTextStyles,
                    )),
                const SizedBox(height: 8),
                InkWell(
                    onTap: () => Get.toNamed('/isoconsultancy'),
                    child: const Text(
                      "ISO Certification",
                      style: drawerTextStyles,
                    )),
                const SizedBox(height: 8),
                InkWell(
                    onTap: () => Get.toNamed('/business_page'),
                    child: const Text(
                      "Business Solution",
                      style: drawerTextStyles,
                    )),
                const SizedBox(height: 8),
              ],
            ),
          ),
          InkWell(
              onTap: () => Get.toNamed("/about_us"),
              child: const Text("About", style: drawerTextStyles)),
          const SizedBox(height: 8),
          InkWell(
              onTap: () => Get.toNamed("/contact_page"),
              child: const Text("Contact", style: drawerTextStyles)),
        ],
      ),
    );
  }
}
