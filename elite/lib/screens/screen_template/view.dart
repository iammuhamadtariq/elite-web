import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/web_carousel_slider.dart';
import 'index.dart';

class ScreenTemplatePage extends GetView<ScreenTemplateController> {
  ScreenTemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              height: 90,
              width: screenWidth,
            ),
          ),
        ],
      ),
    );
  }
}
