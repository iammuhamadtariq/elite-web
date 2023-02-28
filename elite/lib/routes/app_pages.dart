import 'package:elite/routes/routes.dart';
import 'package:elite/screens/about_us_screen.dart/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/business_solution/index.dart';
import '../screens/consultancy_screens/management_consultancy/index.dart';
import '../screens/courses_screen/index.dart';
import '../screens/home_screen/index.dart';
import '../screens/under_construction/index.dart';
import '../screens/contact_screen/index.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => MyHomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.maintainPage,
      page: () => MaintenancePage(),
      binding: MaintenanceBinding(),
    ),
    GetPage(
      name: AppRoutes.contactPage,
      page: () => const ContactPage(),
      binding: AddressBinding(),
    ),
    GetPage(
      name: AppRoutes.aboutUsPage,
      page: () => const AboutUsPage(),
      binding: AboutUsBinding(),
    ),
    GetPage(
      name: AppRoutes.coursesPage,
      page: () => CoursesScreenPage(),
      binding: CoursesScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.isoConsultancyPage,
      page: () => IsoConsultancyPage(),
      binding: ISOConsultancyBinding(),
    ),
    GetPage(
      name: AppRoutes.businessPage,
      page: () => BusinessSolutionPage(),
      binding: BusinessSolutionBinding(),
    ),
  ];
}
