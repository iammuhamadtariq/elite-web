import 'package:cached_network_image/cached_network_image.dart';
import 'package:elite/common/app_colors.dart';
import 'package:elite/common/styles.dart';
import 'package:elite/screens/home_screen/quick_links.dart';
import 'package:flutter/material.dart';

class ContactSectionFooter extends StatelessWidget {
  const ContactSectionFooter({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    Widget _buildWebContainers() {
      return Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 300,
                child: const Text(
                  "Elite Training And Consultancy W.L.L Is An Internationally Accredited Consultancy, Training, Audit And Inspection Company Registered In Doha, Qatar.",
                  style: drawerTextStyles,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: const Text(
                  "Elite Training & Consultancy is to become the first-choice organization specialized in providing world-class consultancy services, advanced technological innovations, and successful training programs to enhance safety, security, sustainability, and resilience.",
                  style: drawerTextStyles,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: const Text(
                  "The Elite Centre seeks to protect organizations and communities by coordinating and integrating all activities necessary to build, sustain, and improve their safety, security, and resilience to mitigate against, prepare for, respond to, and recover from threats, risks, and vulnerabilities.",
                  style: drawerTextStyles,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          //////////////////////////////////
          /// QUICK LINKS
          ///
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              const Text(
                'Quick Links',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.secondaryColor,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                color: AppColors.primaryColor,
                width: 50,
                height: 2,
              ),
              const QuickLinks(),
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          ///////////////////////////////
          ///
          ///CONTACT US SECTION
          ///////////////////////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.secondaryColor,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                color: AppColors.primaryColor,
                width: 50,
                height: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.phone_sharp,
                    color: AppColors.secondaryColor,
                    size: 16.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Call us: +97460004007',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.secondaryColor,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.email_sharp,
                    color: AppColors.secondaryColor,
                    size: 16.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Mail us: info@eliteqatar.qa',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.secondaryColor,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_city_sharp,
                    color: AppColors.secondaryColor,
                    size: 16.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Building 146-G1',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.secondaryColor,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'ibn e seena Street 950',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.secondaryColor,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Doha, Qatar',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.secondaryColor,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth > 1200 ? 100 : 10,
        vertical: 100,
      ),
      height: screenWidth > 1000 ? 600 : 1000,
      color: AppColors.primaryBackgroundColor,
      width: screenWidth,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return _buildWebContainers();
          } else {
            return _buildMobContainer();
          }
        },
      ),
    );
  }

  Widget _buildMobContainer() {
    return Column(
      children: [
        Column(
          children: [
            Container(
              width: 300,
              child: const Text(
                "Elite Training And Consultancy W.L.L Is An Internationally Accredited Consultancy, Training, Audit And Inspection Company Registered In Doha, Qatar.",
                style: drawerTextStyles,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Quick Links',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.secondaryColor,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    color: AppColors.primaryColor,
                    width: 50,
                    height: 2,
                  ),
                ],
              ),
            ),
            QuickLinks(),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Contact us',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.secondaryColor,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    color: AppColors.primaryColor,
                    width: 50,
                    height: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.phone_sharp,
                  color: AppColors.secondaryColor,
                  size: 16.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Call us: +97460004007',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.secondaryColor,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.email_sharp,
                  color: AppColors.secondaryColor,
                  size: 16.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Mail us: info@eliteqatar.qa',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.secondaryColor,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_city_sharp,
                  color: AppColors.secondaryColor,
                  size: 16.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Building 146-G1',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.secondaryColor,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ibn e seena Street 950',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.secondaryColor,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Doha, Qatar',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.secondaryColor,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
