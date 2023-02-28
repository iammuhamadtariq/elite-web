import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:elite/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WebCarouselSlider extends StatefulWidget {
  const WebCarouselSlider({super.key});

  @override
  State<WebCarouselSlider> createState() => _WebCarouselSliderState();
}

class _WebCarouselSliderState extends State<WebCarouselSlider> {
  final sliderController = CarouselController();
  int activeIndex = 0;
  final List<String> imageList = [
    'http://www.eliteqatar.qa/staticfiles/desktopsliderpics/desktopslider1.png',
    'http://www.eliteqatar.qa/staticfiles/desktopsliderpics/desktopslider2.png',
    'http://www.eliteqatar.qa/staticfiles/desktopsliderpics/desktopslider3.png',
    'http://www.eliteqatar.qa/staticfiles/desktopsliderpics/desktopslider4.png',
  ];

  final List<String> _titleList = [
    'Elite Training and Consultancy W.L.L is an internationally accredited consultancy, training, audit and inspection company registered in Doha, Qatar.',
    'We offer Occupational Health and Safety, Environment Technical and Non-Technical training as well as soft skills courses including Management courses.',
    'We assist our valued clients in the GCC, MENA and throughout the world. ',
    'We provide services for consultation, training, environmental monitoring, audits, inspections',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) => setState(
                () => activeIndex = index,
              ),
              height: 500.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1,
            ),
            items: imageList
                .map(
                  (item) => Container(
                    child: Center(
                      child: Stack(children: [
                        CachedNetworkImage(
                          imageUrl: item,
                          fit: BoxFit.cover,
                          width: 1600,
                          placeholder: (context, url) => Container(
                              height: 75,
                              width: 75,
                              child:
                                  Center(child: CircularProgressIndicator())),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                        Positioned(
                          top: 100,
                          left: 100,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            color: AppColors.secondaryColor.withOpacity(0.8),
                            width: 600,
                            child: Text(
                              _titleList[imageList.indexWhere(
                                  (element) => element.contains(item))],
                              style: const TextStyle(
                                fontSize: 36,
                                fontFamily: 'Bangers',
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                )
                .toList(),
          ),
          Positioned(
            bottom: 15,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: buildIndicator(),
          ),
        ],
      ),
    );
  }

  buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imageList.length,
      effect: JumpingDotEffect(
        dotWidth: 10,
        dotHeight: 10,
        dotColor: Colors.amberAccent.withOpacity(0.3),
      ),
    );
  }
}
