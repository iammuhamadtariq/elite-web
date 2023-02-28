import 'package:elite/common/app_colors.dart';
import 'package:flutter/material.dart';

import '../../common/styles.dart';

class AboutUsSection extends StatefulWidget {
  const AboutUsSection({super.key});

  @override
  State<AboutUsSection> createState() => _AboutUsSectionState();
}

class _AboutUsSectionState extends State<AboutUsSection> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1100) {
          return AboutUsSectionWebView(screenWidth: screenWidth);
        } else {
          return AboutUsSectionMobView(screenWidth: screenWidth);
        }
      },
    );
  }
}

class AboutUsSectionMobView extends StatelessWidget {
  const AboutUsSectionMobView({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Align(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.primaryBackgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 25,
                ),
                Text("Welcome to Elite Training & Consultancy!",
                    style: aboutUsHeadingStyle),
                SizedBox(
                  height: 25,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  "Elite Training and Consultancy W.L.L is an internationally accredited consultancy, training, audit and inspection company registered in Doha, Qatar. We offer Occupational Health and Safety, Environment Technical and Non-Technical training as well as soft skills courses including Management courses.",
                  style: aboutUsTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Our Vision",
                  style: aboutUsHeadingSmallStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  "Our vision is to be the global training services provider most admired for its people, partnership and performance. We strongly believe that customers are for Life. To earn our customers’ loyalty, we must listen to them, anticipate their needs and act to create value in their eyes. Elite Training and Consultancy’s responsibility is to continually improve all aspects of the world in which we operate environment, social, economic creating a better tomorrow than today. Our focus will be on environmental stewardship, activities to benefit society, and a commitment to build shareholder value by making Elite a truly sustainable company. Our vision is to bring our trainee into the 21st century through innovation and modern technology. Learning will be enhanced with the use of advanced technology and simulators where reasonably practical and that will allow trainee to learn and understand practically subject at its best. We have the self-honesty to admit when we’re wrong and the courage to change.",
                  style: aboutUsTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Our Mission",
                  style: aboutUsHeadingSmallStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  "Elite Training and Consultancy W.L.L provides individualized services, invaluable resources, and innovative opportunities for training, employment, and enterprise development, to meet the changing needs of our community. We prepare and empower students to be successful by helping them develop the knowledge, skills and abilities. We inspire students to continue earning throughout life that will help them to be always at the forefront of business requirements and continually achieve excellence.",
                  style: aboutUsTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Quality Policy of Elite Training & Consultancy.",
                  style: aboutUsHeadingSmallStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  '''Elite Training & Consultancy’s management is committed to consistent provision of Consultancy Services and Training Solutions that is meeting or exceeding customer participations through education and technologies focused on implementation of ISO 9001:2015 Quality Management System standard and other application requirement and continual improving its effectiveness. 
          ''',
                  style: aboutUsTextStyle,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  '''Leadership commitment and active participation of all staff and implementation best practices, are medium to upgrade Qatar education sector view of training and consultancy leading to continuous growth and ultimately achieving customer satisfaction. ''',
                  style: aboutUsTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Who we are reaching?",
                  style: aboutUsHeadingSmallStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  '''Our training courses are for everyone, at any stage of their career. Training mythologies have been shifted from limitations of distances to digital delivery. Which created ways to provide training to everyone who is seeking continuous professional education for their career development in any kind of field such as occupational health and safety field, accounting, engineering, management, etc. We offer large number of courses which engage almost all kind of professionals to improve their skill with use of digital deliver as well as with availability of classrooms. ''',
                  style: aboutUsTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Impact of our trainings for individuals?",
                  style: aboutUsHeadingSmallStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  '''Our trainings & and internationally accredited courses improve qualifications to next level. Many our learners upgraded their career by following fastest way of getting qualifications. We guide learners by providing zero to hero road map. Complete road map gives learners a right direction to get precisely required qualification to achieve goals. Learners can choose multiple fields with our trainings, such as Occupational Health and Safety practitioner, Food & Safety Officers, Facility Management, Accounting, Document Controller, IT Specialists and much more.''',
                  style: aboutUsTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "How trainings help for our corporate clients?",
                  style: aboutUsHeadingSmallStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  '''We are providing internationally accredited trainings and qualifications for staff and workers of our corporate clients. Which improves the skill and knowledge of their staff and workers to achieve more better performance with quality. Staff of our corporate clients learn new tools to utilize better performance of overall organizational operation. More skilled staff of one organization decides how an organization will perform in industry.''',
                  style: aboutUsTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AboutUsSectionWebView extends StatelessWidget {
  const AboutUsSectionWebView({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Align(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to Elite Training & Consultancy!",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: screenWidth > 1200 ? 28 : 18,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 100,
                          right: 100,
                          top: 25,
                          bottom: 25,
                        ),
                        width: screenWidth,
                        child: Text(
                          textAlign: TextAlign.left,
                          "Elite Training and Consultancy W.L.L is an internationally accredited consultancy, training, audit and inspection company registered in Doha, Qatar. We offer Occupational Health and Safety, Environment Technical and Non-Technical training as well as soft skills courses including Management courses.",
                          style: TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Handel',
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            width: screenWidth / 2 - 100,
                            height: 350,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Our Vision",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 18,
                                    fontFamily: 'Handel',
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  "Our vision is to be the global training services provider most admired for its people, partnership and performance. We strongly believe that customers are for Life. To earn our customers’ loyalty, we must listen to them, anticipate their needs and act to create value in their eyes. Elite Training and Consultancy’s responsibility is to continually improve all aspects of the world in which we operate environment, social, economic creating a better tomorrow than today. Our focus will be on environmental stewardship, activities to benefit society, and a commitment to build shareholder value by making Elite a truly sustainable company. Our vision is to bring our trainee into the 21st century through innovation and modern technology. Learning will be enhanced with the use of advanced technology and simulators where reasonably practical and that will allow trainee to learn and understand practically subject at its best. We have the self-honesty to admit when we’re wrong and the courage to change.",
                                  style: TextStyle(
                                    height: 1.5,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Handel',
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            width: screenWidth / 2 - 100,
                            height: 350,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Our Mission",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 18,
                                    fontFamily: 'Handel',
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  "Elite Training and Consultancy W.L.L provides individualized services, invaluable resources, and innovative opportunities for training, employment, and enterprise development, to meet the changing needs of our community. We prepare and empower students to be successful by helping them develop the knowledge, skills and abilities. We inspire students to continue earning throughout life that will help them to be always at the forefront of business requirements and continually achieve excellence.",
                                  style: TextStyle(
                                    height: 1.5,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Handel',
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Quality Policy of Elite Training & Consultancy.",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                            fontFamily: 'Handel',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: screenWidth - 200,
                          child: const Text(
                            '''Elite Training & Consultancy’s management is committed to consistent provision of Consultancy Services and Training Solutions that is meeting or exceeding customer participations through education and technologies focused on implementation of ISO 9001:2015 Quality Management System standard and other application requirement and continual improving its effectiveness. 
''',
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Handel',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth - 200,
                          child: const Text(
                            '''Leadership commitment and active participation of all staff and implementation best practices, are medium to upgrade Qatar education sector view of training and consultancy leading to continuous growth and ultimately achieving customer satisfaction. ''',
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Handel',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: screenWidth - 500,
                          height: 3,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "Who we are reaching?",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                            fontFamily: 'Handel',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: screenWidth - 200,
                          child: const Text(
                            '''Our training courses are for everyone, at any stage of their career. Training mythologies have been shifted from limitations of distances to digital delivery. Which created ways to provide training to everyone who is seeking continuous professional education for their career development in any kind of field such as occupational health and safety field, accounting, engineering, management, etc. We offer large number of courses which engage almost all kind of professionals to improve their skill with use of digital deliver as well as with availability of classrooms. ''',
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Handel',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "Impact of our trainings for individuals?",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                            fontFamily: 'Handel',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: screenWidth - 200,
                          child: const Text(
                            '''Our trainings & and internationally accredited courses improve qualifications to next level. Many our learners upgraded their career by following fastest way of getting qualifications. We guide learners by providing zero to hero road map. Complete road map gives learners a right direction to get precisely required qualification to achieve goals. Learners can choose multiple fields with our trainings, such as Occupational Health and Safety practitioner, Food & Safety Officers, Facility Management, Accounting, Document Controller, IT Specialists and much more.''',
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Handel',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "How trainings help for our corporate clients?",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                            fontFamily: 'Handel',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: screenWidth - 200,
                          child: const Text(
                            '''We are providing internationally accredited trainings and qualifications for staff and workers of our corporate clients. Which improves the skill and knowledge of their staff and workers to achieve more better performance with quality. Staff of our corporate clients learn new tools to utilize better performance of overall organizational operation. More skilled staff of one organization decides how an organization will perform in industry.''',
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Handel',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth - 500,
                      height: 3,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
