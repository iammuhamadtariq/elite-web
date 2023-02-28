import 'package:elite/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsultancyDropdown extends StatefulWidget {
  @override
  _ConsultancyDropdownState createState() => _ConsultancyDropdownState();
}

class _ConsultancyDropdownState extends State<ConsultancyDropdown> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      offset: const Offset(0, 35),
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: 'Recruitement Consultancy',
          child: Text(
            'Recruitement Consultancy',
            style: TextStyle(
              color: AppColors.secondaryColor,
            ),
          ),
        ),
        const PopupMenuItem(
          value: 'ISO Certification',
          child: Text(
            'ISO Certification',
            style: TextStyle(
              color: AppColors.secondaryColor,
            ),
          ),
        ),
        const PopupMenuItem(
          value: 'Business Solution',
          child: Text(
            'Business Solution',
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
            "Consultancy",
            style: TextStyle(color: AppColors.secondaryColor),
          ),
          Icon(Icons.arrow_drop_down),
        ],
      ),
      onSelected: (value) {
        setState(() {
          if (value == 'Recruitement Consultancy') {
            Get.toNamed('/maintain_page');
          } else if (value == 'ISO Certification') {
            Get.toNamed('/isoconsultancy');
          } else if (value == 'Business Solution') {
            Get.toNamed('/business_page');
          }
        });
      },
    );
  }
}
