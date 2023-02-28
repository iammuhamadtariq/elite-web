import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton2 extends StatefulWidget {
  const CustomDropDownButton2({Key? key}) : super(key: key);

  @override
  _CustomDropDownButton2State createState() => _CustomDropDownButton2State();
}

class _CustomDropDownButton2State extends State<CustomDropDownButton2> {
  String hintValue = 'Courses'; // ---- hint
  var dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 115,
      child: Column(
        children: [
          DropdownButton2<String>(
            value: dropdownValue,
            hint: Text(hintValue), // ---- hint
            isExpanded: true,
            items: <String>[
              'Value 1',
              'Value 2',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                // ----- if Value 2 is selected
                if (newValue == 'Value 1' || newValue == 'Value 2') {
                  hintValue = 'Courses';
                } else
                  hintValue = '$newValue';
              });
            },
          ),
        ],
      ),
    ));
  }
}
