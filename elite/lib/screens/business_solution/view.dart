import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../common/app_colors.dart';
import '../../common/contact_section.dart';
import '../../common/contact_section_footer.dart';
import '../home_screen/drawer_item.dart';
import '../home_screen/web_menu_section.dart';
import 'index.dart';

class BusinessSolutionPage extends GetView<BusinessSolutionController> {
  BusinessSolutionPage({super.key});

  @override
  Widget build(BuildContext context) {
    _launchWhatsAppString() async {
      final link = WhatsAppUnilink(
        phoneNumber: '+97460004007',
        text: "Hey! I'm inquiring about ISO Certifications",
      );
      await launchUrlString('$link');
    }

    var screenWidth = MediaQuery.of(context).size.width;

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
                  imageUrl: controller.logoURL,
                  height: 60,
                  placeholder: (context, url) => const SizedBox(
                      height: 10,
                      width: 10,
                      child: Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              screenWidth > 1100
                  ? WebMenuBar(screenWidth: screenWidth)
                  : const SizedBox(
                      width: 1,
                    ),
            ],
          ),
          iconTheme: const IconThemeData(color: AppColors.secondaryColor),
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
        slivers: [
          ////////////////// ISO CONSULTANCY PAGE SECTION
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth > 1200 ? 100 : 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Complete Business Solution",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: screenWidth > 1100 ? 36 : 22,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Elite Training & Consultancy helps provide complete Business Solution in Qatar. Our team will work for you to establish new business without any charges. Surprising? Right? You must contact us to ask more details about it.  ",
                    style: TextStyle(fontSize: screenWidth > 1100 ? 36 : 22),
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Help to Foreign Companies?",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: screenWidth > 1100 ? 36 : 18,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    textAlign: TextAlign.justify,
                    "Elite Training & Consultancy help foreigner companies to start & grow in Qatar market. Qatar is booming all the time for any kind of industry and dream place to do business for foreigner companies. ",
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //////////////////////////////////
                  Semantics(
                    label: "Legal Knowledge?",
                    child: Text(
                      "Legal Knowledge?",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: screenWidth > 1100 ? 36 : 18,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Semantics(
                    label:
                        "Our team is expert in dealing with all department as per business requirements. Formation of company from start to end we work for you. We have highly qualified layers and attorneys to help our client to start their business with all legal requirements. ",
                    child: const Text(
                      textAlign: TextAlign.justify,
                      "Our team is expert in dealing with all department as per business requirements. Formation of company from start to end we work for you. We have highly qualified layers and attorneys to help our client to start their business with all legal requirements. ",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  ////////////////////////////
                  ///
                  /// //////////////////////////////////
                  Semantics(
                    label: "Our help after the scope as well?",
                    value: "Our help after the scope as well?",
                    child: Text(
                      "Our help after the scope as well?",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: screenWidth > 1100 ? 36 : 18,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Semantics(
                    label:
                        "Yes, Elite Training & Consultancy provide endless support to our client ever after the completion of scope. We keep advising and supporting our client throughout achievement of their business goals. ",
                    child: const Text(
                      textAlign: TextAlign.justify,
                      "Yes, Elite Training & Consultancy provide endless support to our client ever after the completion of scope. We keep advising and supporting our client throughout achievement of their business goals. ",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ////////////////////////////
                  Semantics(
                    label: "How to Start?",
                    child: Text(
                      "How to Start?",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: screenWidth > 1100 ? 36 : 18,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Semantics(
                    label:
                        "  Scroll little more down to see contact section of this page or you can also send us enquiry at bsolution@eliteqatar.qa",
                    child: const Text(
                      textAlign: TextAlign.justify,
                      "Scroll little more down to see contact section of this page or you can also send us enquiry at bsolution@eliteqatar.qa",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),

          ///////////////////////////// CONTACT SECTION

          const SliverToBoxAdapter(
            child: ContactSection(),
          ),
          SliverToBoxAdapter(
            child: ContactSectionFooter(
              screenWidth: screenWidth,
            ),
          ),

          ///////////////////////// FOOTER
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
