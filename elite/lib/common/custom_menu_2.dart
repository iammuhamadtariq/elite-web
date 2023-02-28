import 'package:flutter/material.dart';

class StraggedExample extends StatefulWidget {
  const StraggedExample({Key? key}) : super(key: key);

  @override
  _StraggedExampleState createState() => _StraggedExampleState();
}

class _StraggedExampleState extends State<StraggedExample> {
  final fromAPi = ["a", "e", "f", "a"];

  late final dropitems;
  late String initValue;

  @override
  void initState() {
    super.initState();
    final values = fromAPi.toSet().toList();
    dropitems = List.generate(
      values.length,
      (index) => DropdownMenuItem(
        child: Text("item $index"),
        value: values[index],
      ),
    );

    initValue = values[0];
  }

  GlobalKey _dropdownButtonKey = GlobalKey();

  openDropdown() {
    GestureDetector? detector;
    searchForGestureDetector(BuildContext element) {
      element.visitChildElements((element) {
        if (element.widget != null && element.widget is GestureDetector) {
          detector = element.widget as GestureDetector;
        } else {
          searchForGestureDetector(element);
        }
      });
    }

    searchForGestureDetector(_dropdownButtonKey.currentContext!);
    detector!.onTap!();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onHover: (value) {
            if (value) openDropdown();
          },
          onTap: () {},
          child: DropdownButton(
            key: _dropdownButtonKey,
            value: initValue,
            items: dropitems,
            onChanged: (value) {
              setState(() {
                initValue = value as String;
              });
            },
          ),
        ),
      ),
    );
  }
}
