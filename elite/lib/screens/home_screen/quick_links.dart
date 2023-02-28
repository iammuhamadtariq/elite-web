import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/styles.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        InkWell(
            onTap: () => Get.toNamed("/"),
            child: Text("Home", style: drawerTextStyles)),
        const SizedBox(
          height: 5,
        ),
        const Text("Courses", style: drawerTextStyles),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Get.toNamed("/courses"),
                child: Text("HSE Courses", style: drawerTextStyles),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () => Get.toNamed("/maintain_page"),
                child: Text("IT Courses", style: drawerTextStyles),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () => Get.toNamed("/maintain_page"),
                child: Text("Management Courses", style: drawerTextStyles),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        const Text("Consultancy", style: drawerTextStyles),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () => Get.toNamed("/maintain_page"),
                child: const Text("Recruitement Consultancy",
                    style: drawerTextStyles),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () => Get.toNamed("/isoconsultancy"),
                child: const Text("ISO Certification", style: drawerTextStyles),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () => Get.toNamed("/business_page"),
                child: const Text("Business Solution", style: drawerTextStyles),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
            onTap: () => Get.toNamed("/about_us"),
            child: Text("About", style: drawerTextStyles)),
        const SizedBox(
          height: 5,
        ),
        InkWell(
            onTap: () => Get.toNamed("/contact_page"),
            child: Text("Contact", style: drawerTextStyles)),
      ],
    );
  }
}
