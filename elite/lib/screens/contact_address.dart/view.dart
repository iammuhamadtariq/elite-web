import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class AddressPage extends GetView<AddressController> {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Colors.amberAccent,
              height: 600,
              width: screenWidth,
            ),
          ),
        ],
      ),
    );
  }
}
