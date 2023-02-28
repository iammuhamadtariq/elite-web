import 'package:cached_network_image/cached_network_image.dart';
import 'package:elite/common/app_colors.dart';
import 'package:elite/common/contact_section.dart';
import 'package:elite/screens/home_screen/drawer_item.dart';
import 'package:elite/screens/home_screen/web_menu_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../common/contact_section_footer.dart';
import 'index.dart';

class MaintenancePage extends GetView<MaintenanceController> {
  MaintenancePage({super.key});

  @override
  Widget build(BuildContext context) {
    _launchWhatsAppString() async {
      final link = WhatsAppUnilink(
        phoneNumber: '+97450622545',
        text: "Hey! I'm inquiring",
      );
      await launchUrlString('$link');
    }

    var screenWidth = MediaQuery.of(context).size.width;
    final mainCourseScrollController = ScrollController();
    final basicCourseScrollController = ScrollController();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.whatsapp),
        backgroundColor: Colors.green.shade800,
        onPressed: () async {
          await _launchWhatsAppString();
        },
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: CachedNetworkImage(
                  imageUrl: 'http://www.eliteqatar.qa/staticfiles/logo.png',
                  height: 60,
                  placeholder: (context, url) => Container(
                      height: 10,
                      width: 10,
                      child: Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              screenWidth > 1100
                  ? WebMenuBar(screenWidth: screenWidth)
                  : SizedBox(
                      width: 1,
                    ),
            ],
          ),
          iconTheme: IconThemeData(color: AppColors.secondaryColor),
        ),
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Container(
          width: 300,
          color: AppColors.primaryBackgroundColor,
          child: Column(
            children: [
              const DrawerItems(),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        controller: mainCourseScrollController,
        slivers: [
          // app bar section ////////////////////////////

          SliverToBoxAdapter(
            child: Column(
              children: const [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "THIS PART OF WEBSITE IS UNDER MAINTENANCE",
                  style: TextStyle(fontSize: 36),
                ),
                SizedBox(
                  height: 100,
                ),
                ContactSection(),
              ],
            ),
          ),
          /////////////////////////////////

          /////////////////////////////

          SliverToBoxAdapter(
            child: ContactSectionFooter(screenWidth: screenWidth),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: AppColors.primaryColor,
              height: 50,
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "© Elite Training & Consutlancy -  All Rights Reserved",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
