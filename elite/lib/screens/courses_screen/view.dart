import 'package:elite/common/app_colors.dart';
import 'package:elite/common/contact_section.dart';
import 'package:elite/common/mobile_carsoul_slider.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../common/contact_section_footer.dart';
import '../../common/styles.dart';
import '../../common/web_carousel_slider.dart';
import '../home_screen/courses/disaster_management.dart';
import '../home_screen/drawer_item.dart';
import '../home_screen/web_menu_section.dart';
import 'index.dart';

class CoursesScreenPage extends GetView<CoursesScreenController> {
  CoursesScreenPage({super.key});

  OverlayEntry? entry;

  @override
  Widget build(BuildContext context) {
    _launchWhatsAppString() async {
      final link = WhatsAppUnilink(
        phoneNumber: '+97460004007',
        text: "Hey! I'm inquiring about course",
      );
      await launchUrlString('$link');
    }

    var screenWidth = MediaQuery.of(context).size.width;
    final mainCourseScrollController = ScrollController();
    final basicCourseScrollController = ScrollController();
    final List<String> imageList = [
      'http://www.eliteqatar.qa//staticfiles/mobsliderpics/mobeliteslider1.png',
      'http://www.eliteqatar.qa//staticfiles/mobsliderpics/mobeliteslider2.png',
      'http://www.eliteqatar.qa//staticfiles/mobsliderpics/mobeliteslider3.png',
      'http://www.eliteqatar.qa//staticfiles/mobsliderpics/mobeliteslider4.png',
      'http://www.eliteqatar.qa//staticfiles/mobsliderpics/mobeliteslider5.png',
    ];

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
          /////////////////////////////////

          const SliverToBoxAdapter(child: DisasterManagementCourse()),

          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (screenWidth > 1200) {
                  return HABCTrainingWebPart(
                    screenWidth: screenWidth,
                    basicCourseScrollController: basicCourseScrollController,
                    controller: controller,
                  );
                } else {
                  return HABCTrainingPart(
                    screenWidth: screenWidth,
                    basicCourseScrollController: basicCourseScrollController,
                    controller: controller,
                  );
                }
              },
            ),
          ),

          SliverToBoxAdapter(
            child: BasicTrainingPart(
              screenWidth: screenWidth,
              basicCourseScrollController: basicCourseScrollController,
              controller: controller,
            ),
          ),
          const SliverToBoxAdapter(
            child: ContactSection(),
          ),
          ///////////////////////////// CONTACT SECTION

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

class DisasterManagementCourse extends StatelessWidget {
  const DisasterManagementCourse({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
        left: 15,
        right: 15,
      ),
      width: double.infinity,
      child: Column(
        children: [
          Semantics(
            label: disasterManagementHeading,
            child: Container(
              width: double.infinity,
              child: const Text(
                disasterManagementHeading,
                style: courseHeadingStyles,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Semantics(
                label: 'Trending Course of This Month',
                child: const Text(
                  '(Trending course of this month)',
                  style: courseHeadingStyles,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Semantics(
            label: disasterManagermentOverview,
            child: const Text(
              disasterManagermentOverview,
              style: aboutUsTextStyle,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Semantics(
                label:
                    'Planning & Preparation of Major Crisis/Disasters Management Exercise Workshop Course Over View',
                child: const Text(
                  'Course Overview',
                  style: aboutUsHeadingStyle,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Semantics(
            label: disasterManagermentOverview,
            child: const Text(
              disasterManagermentOverview,
              style: aboutUsTextStyle,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class HABCTrainingPart extends StatelessWidget {
  const HABCTrainingPart({
    super.key,
    required this.screenWidth,
    required this.basicCourseScrollController,
    required this.controller,
  });

  final double screenWidth;
  final ScrollController basicCourseScrollController;
  final CoursesScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: screenWidth > 1200 ? 100 : 10,
      ),
      height: screenWidth > 1200 ? 600 : 550,
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "HABC Highfields Courses",
              style: courseHeadingStyles,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              textAlign: TextAlign.justify,
              "HABC Highfields is highly recognized by UK’s top awarding bodies and very popular in hospitality to provide training to their staff and skilled workers. HABC Highfields became one of top 5 organization of UK in this industry. There many education products and tools provided by HABC to help learners to improve their skills and knowledge.  ",
              style: aboutUsTextStyle,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              child: ListView.builder(
                controller: basicCourseScrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.habcTrainingsImagesList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(right: 10),
                    width: 275,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: CachedNetworkImage(
                            height: 230,
                            width: 300,
                            imageUrl: controller.habcTrainingsImagesList[index],
                            fit: BoxFit.fill,
                            placeholder: (context, url) => Container(
                                height: 25,
                                width: 25,
                                child: const Center(
                                    child: CircularProgressIndicator())),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 15,
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            color: AppColors.secondaryColor.withOpacity(0.8),
                            width: 160,
                            child: Text(
                              controller.habcCourses[index],
                              style: const TextStyle(
                                fontSize: 18,
                                color: AppColors.primaryColor,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BasicTrainingPart extends StatelessWidget {
  const BasicTrainingPart({
    super.key,
    required this.screenWidth,
    required this.basicCourseScrollController,
    required this.controller,
  });

  final double screenWidth;
  final ScrollController basicCourseScrollController;
  final CoursesScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: EdgeInsets.symmetric(
        horizontal: screenWidth > 1200 ? 100 : 3,
        vertical: screenWidth > 800 ? 10 : 50,
      ),
      child: Column(
        children: [
          Text(
            "Health & Safety Trainings",
            style: TextStyle(
              color: AppColors.secondaryColor,
              fontSize: screenWidth > 1100 ? 36 : 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 400,
            child: ListView.builder(
              controller: basicCourseScrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.basicTrainingList.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 400.0,
                      height: 300.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: CachedNetworkImage(
                          imageUrl: controller.basicTrainingList[index],
                          fit: BoxFit.fill,
                          placeholder: (context, url) => Container(
                              height: 75,
                              width: 75,
                              child: const Center(
                                  child: CircularProgressIndicator())),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 30,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: AppColors.primaryColor.withOpacity(0.7),
                        width: 250,
                        child: Text(
                          controller.basicTrainingTitleList[index],
                          style: const TextStyle(
                            fontSize: 30,
                            color: AppColors.primaryBackgroundColor,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HABCTrainingWebPart extends StatelessWidget {
  const HABCTrainingWebPart({
    super.key,
    required this.screenWidth,
    required this.basicCourseScrollController,
    required this.controller,
  });

  final double screenWidth;
  final ScrollController basicCourseScrollController;
  final CoursesScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      margin: EdgeInsets.symmetric(
        horizontal: screenWidth > 1200 ? 100 : 3,
        vertical: screenWidth > 800 ? 10 : 50,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Semantics(
            label: 'HABC Highfield Trainings',
            value: 'HABC Highfield Trainings',
            child: Text(
              "HABC Highfield Trainings",
              style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: screenWidth > 1100 ? 36 : 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 400,
            child: ListView.builder(
              controller: basicCourseScrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.habcTrainingsImagesList.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 400.0,
                      height: 300.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: CachedNetworkImage(
                          imageUrl: controller.habcTrainingsImagesList[index],
                          fit: BoxFit.fill,
                          placeholder: (context, url) => Container(
                              height: 75,
                              width: 75,
                              child: const Center(
                                  child: CircularProgressIndicator())),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 30,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: AppColors.primaryColor.withOpacity(0.7),
                        width: 250,
                        child: Text(
                          controller.habcCourses[index],
                          style: const TextStyle(
                            fontSize: 30,
                            color: AppColors.primaryBackgroundColor,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
