import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:elite/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MobileCarouselSlider extends StatefulWidget {
  const MobileCarouselSlider({super.key});

  @override
  State<MobileCarouselSlider> createState() => _MobileCarouselSliderState();
}

class _MobileCarouselSliderState extends State<MobileCarouselSlider> {
  final sliderController = CarouselController();
  int activeIndex = 0;
  final List<String> imageList = [
    'http://www.eliteqatar.qa//staticfiles/mobsliderpics/mobeliteslider1.png',
    'http://www.eliteqatar.qa//staticfiles/mobsliderpics/mobeliteslider2.png',
    'http://www.eliteqatar.qa//staticfiles/mobsliderpics/mobeliteslider3.png',
    'http://www.eliteqatar.qa//staticfiles/mobsliderpics/mobeliteslider4.png',
  ];
  final List<String> _titleList = [
    'Elite Training and Consultancy W.L.L is an internationally accredited consultancy, training, audit and inspection company registered in Doha, Qatar.',
    'We offer Occupational Health and Safety, Environment Technical and Non-Technical training as well as soft skills courses including Management courses.',
    'We assist our valued clients in the GCC, MENA and throughout the world. ',
    'We provide services for consultation, training, environmental monitoring, audits, inspections.',
    'The Largest and Leading Training Provider in Qatar. ',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index, realIndex) {
            final imageURL = imageList[index];
            return Stack(
              children: [
                buildImage(imageURL, index),
                Positioned(
                  top: 100,
                  left: 25,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: AppColors.secondaryColor.withOpacity(0.8),
                    width: 300,
                    child: Text(
                      _titleList[index],
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Open Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,

            //     autoPlayInterval: const Duration(seconds: 2),
            viewportFraction: 1,
            onPageChanged: (index, reason) => setState(
              () => activeIndex = index,
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: MediaQuery.of(context).size.width / 2 - 50,
          child: buildIndicator(),
        ),
      ],
    );
  }

  buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imageList.length,
      effect: JumpingDotEffect(
        dotWidth: 10,
        dotHeight: 10,
        dotColor: const Color.fromARGB(255, 158, 156, 39).withOpacity(0.3),
      ),
    );
  }
}

Widget buildImage(String ImageURL, int index) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
    color: Colors.white,
    child: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: CachedNetworkImage(
          imageUrl: ImageURL,
          fit: BoxFit.fill,
          width: 1600,
          placeholder: (context, url) => Container(
              height: 75,
              width: 75,
              child: Center(child: CircularProgressIndicator())),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    ),
  );
}
