import 'package:elite/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesDropdown extends StatefulWidget {
  @override
  _CoursesDropdownState createState() => _CoursesDropdownState();
}

class _CoursesDropdownState extends State<CoursesDropdown> {
  final List<String> textList = [
    "HSE Courrses",
    "IT Courses",
    "Management Courses"
  ];

  final List<String> coursePageRoute = [
    "/courses",
    "IT Courses",
    "Management Courses"
  ];

  late String _currentItemSelected;

  @override
  void initState() {
    super.initState();
    _currentItemSelected = textList[0];
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      offset: const Offset(0, 35),
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: 'HSE Courese',
          child: Text(
            'HSE Courses',
            style: TextStyle(
              color: AppColors.secondaryColor,
            ),
          ),
        ),
        const PopupMenuItem(
          value: 'IT Courses',
          child: Text(
            'IT Courses',
            style: TextStyle(
              color: AppColors.secondaryColor,
            ),
          ),
        ),
        const PopupMenuItem(
          value: 'Management Courses',
          child: Text(
            'Management Courses',
            style: TextStyle(
              color: AppColors.secondaryColor,
            ),
          ),
        ),
      ],
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text(
            "Courses",
            style: TextStyle(color: AppColors.secondaryColor),
          ),
          Icon(Icons.arrow_drop_down),
        ],
      ),
      onSelected: (value) {
        setState(() {
          if (value == 'HSE Courese') {
            Get.toNamed('/courses');
          } else if (value == 'IT Courses') {
            Get.toNamed('/maintain_page');
          } else if (value == 'Management Courses') {
            Get.toNamed('/maintain_page');
          }
        });
      },
    );
  }
}
