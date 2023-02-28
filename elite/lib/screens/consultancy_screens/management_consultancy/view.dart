import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../../common/app_colors.dart';
import '../../../common/contact_section.dart';
import '../../../common/contact_section_footer.dart';
import '../../home_screen/drawer_item.dart';
import '../../home_screen/web_menu_section.dart';
import 'index.dart';

class IsoConsultancyPage extends GetView<ISOConsultancyController> {
  IsoConsultancyPage({super.key});

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
                        "ISO Certification Consultancy",
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
                    "Elite Training & Consultancy is providing Highly experienced team for ISO Certification Consultancy.",
                    style: TextStyle(fontSize: screenWidth > 1100 ? 36 : 22),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "How we can start?",
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
                    "Please send us enquiry on isoenquiry@eliteqatar.qa , our representative will contact with you to give detailed briefing on ISO Certification Consultancy.",
                    style: TextStyle(fontSize: screenWidth > 1100 ? 36 : 22),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "What is Elite's Methodology?",
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
                    "Our team of consultants assess the scope and activities of your business against the Standard your company is being certified to. We then craft a custom-made program to rectify spaces that prove inadequate of the standard and work very closely with your management team to rectify them. Management system manual and supportive documents are created by our experts and are handed over to the Management Team as a guide that helps to accelerate the implementation route to a successful System Certification.",
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //////////////////////////////////
                  Semantics(
                    label: "What is ISO?",
                    child: Text(
                      "What is ISO?",
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
                        "The International Organization for Standardization(ISO) is an independent, non-governmental international standard-setting organization composed of 161 national standards bodies.In 1946 over 25 countries  assembled in London to create a new international organisation with an objective to ‘facilitate the international coordination and unification of industrial standards’. ISO officially began operations in February 1947,with their Central Secretariat based in Geneva, Switzerland.",
                    child: const Text(
                      textAlign: TextAlign.justify,
                      "The International Organization for Standardization(ISO) is an independent, non-governmental international standard-setting organization composed of 161 national standards bodies.In 1946 over 25 countries  assembled in London to create a new international organisation with an objective to ‘facilitate the international coordination and unification of industrial standards’. ISO officially began operations in February 1947,with their Central Secretariat based in Geneva, Switzerland.",
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
                    label: "What is ISO Management System?",
                    value: "What is ISO Management System?",
                    child: Text(
                      "What is ISO Management System?",
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
                        "The International Organization for Standardization(ISO) is an independent, non-governmental international standard-setting organization composed of 161 national standards bodies.In 1946 over 25 countries  assembled in London to create a new international organisation with an objective to ‘facilitate the international coordination and unification of industrial standards’. ISO officially began operations in February 1947,with their Central Secretariat based in Geneva, Switzerland.",
                    child: const Text(
                      textAlign: TextAlign.justify,
                      "The International Organization for Standardization(ISO) is an independent, non-governmental international standard-setting organization composed of 161 national standards bodies.In 1946 over 25 countries  assembled in London to create a new international organisation with an objective to ‘facilitate the international coordination and unification of industrial standards’. ISO officially began operations in February 1947,with their Central Secretariat based in Geneva, Switzerland.",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ////////////////////////////
                  Semantics(
                    label: "What are Standards?",
                    child: Text(
                      "What are Standards?",
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
                        '''A standard is a document that provides requirements, specifications, guidelines or characteristics that can be used consistently to ensure that materials, products, processes and services are fit for their purpose. They give world-class specifications for products, services and systems, to ensure quality, safety and efficiency. 
ISO has published more than 21000 International Standards and related documents, covering almost every industry, from technology, to food safety, to agriculture and healthcare. Standards help in facilitating international trade. A management system standard tells your customers that you are bound and determined on fulfilling their business needs.
''',
                    child: const Text(
                      textAlign: TextAlign.justify,
                      '''A standard is a document that provides requirements, specifications, guidelines or characteristics that can be used consistently to ensure that materials, products, processes and services are fit for their purpose. They give world-class specifications for products, services and systems, to ensure quality, safety and efficiency. 
ISO has published more than 21000 International Standards and related documents, covering almost every industry, from technology, to food safety, to agriculture and healthcare. Standards help in facilitating international trade. A management system standard tells your customers that you are bound and determined on fulfilling their business needs.
''',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ////////////////////////////
                  Semantics(
                    label: "ISO 9001:2015 Quality Management Systems",
                    child: Text(
                      "ISO 9001:2015 Quality Management Systems",
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
                        '''The increasing demand and sophistication of customers have virtually modified the rules of competition and has enforced organizations to focus on quality. Today, what underlies competitive advantage is the ability to provide products and services that meet or exceed the needs of customers. This implies that to survive, organizations must devise new management systems. Quality Management System defines the principles for quality management system and is the only standard in the family that can be used by any organization, large or small, regardless of its field of activity. It aims to help organizations become structured and efficient. The latest revised edition of ISO 9001:2015 is centered on the PDCA (Plan-Do-Check-Act) methodology and provides a process-oriented approach to documenting and reviewing the structure, responsibilities, and procedures required to achieving effective quality management in an organization. The revisions introduced in the 2015 are envisioned to ensure that ISO 9001 continues to adapt to the changing environments in which organizations operate. Some of the significant updates in ISO 9001:2015 include the introduction of new terminology, restructuring some of the information, an emphasis on risk-based thinking to enhance the application of the process approach, improved applicability for services, and increased leadership requirements. Using ISO 9001:2015 helps ensure that customers get consistent, good quality products and services, which in turn brings many business benefits. There are over one million companies and organizations in over 170 countries certified to ISO 9001. This standard acts as a tool to streamline their processes and increase their efficiency at what they do. It also helps organizations demonstrate to their customers that they can offer products and services of consistently good quality ISO 9001:2015 has replaced the previous editions and certification bodies have up to three years to migrate certificates to the new version.''',
                    child: const Text(
                      textAlign: TextAlign.justify,
                      '''The increasing demand and sophistication of customers have virtually modified the rules of competition and has enforced organizations to focus on quality. Today, what underlies competitive advantage is the ability to provide products and services that meet or exceed the needs of customers. This implies that to survive, organizations must devise new management systems. Quality Management System defines the principles for quality management system and is the only standard in the family that can be used by any organization, large or small, regardless of its field of activity. It aims to help organizations become structured and efficient. The latest revised edition of ISO 9001:2015 is centered on the PDCA (Plan-Do-Check-Act) methodology and provides a process-oriented approach to documenting and reviewing the structure, responsibilities, and procedures required to achieving effective quality management in an organization. The revisions introduced in the 2015 are envisioned to ensure that ISO 9001 continues to adapt to the changing environments in which organizations operate. Some of the significant updates in ISO 9001:2015 include the introduction of new terminology, restructuring some of the information, an emphasis on risk-based thinking to enhance the application of the process approach, improved applicability for services, and increased leadership requirements. Using ISO 9001:2015 helps ensure that customers get consistent, good quality products and services, which in turn brings many business benefits. There are over one million companies and organizations in over 170 countries certified to ISO 9001. This standard acts as a tool to streamline their processes and increase their efficiency at what they do. It also helps organizations demonstrate to their customers that they can offer products and services of consistently good quality ISO 9001:2015 has replaced the previous editions and certification bodies have up to three years to migrate certificates to the new version.''',
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
