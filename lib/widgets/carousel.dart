import 'package:carousel_slider/carousel_slider.dart';
import 'package:mywebsite/widgets/responsive.dart';
import 'package:flutter/material.dart';

class DestinationCarousel extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/images/asia.jpg',
    'assets/images/africa.jpg',
    'assets/images/europe.jpg',
    'assets/images/south_america.jpg',
    'assets/images/australia.jpg',
    'assets/images/antarctica.jpg',
  ];

  final List<String> places = [
    'ASIA',
    'AFRICA',
    'EUROPE',
    'SOUTH AMERICA',
    'AUSTRALIA',
    'ANTARCTICA',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Container(
      height: screenSize.height/1.5,
      width:screenSize.width,
      child: Stack(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                scrollPhysics: ResponsiveWidget.isSmallScreen(context)
                    ? PageScrollPhysics()
                    : NeverScrollableScrollPhysics(),
                enlargeCenterPage: false,
               // aspectRatio: 17/7,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                    for (int i = 0; i < imageSliders.length; i++) {
                      if (i == index) {
                        _isSelected[i] = true;
                      } else {
                        _isSelected[i] = false;
                      }
                    }
                  });
                }),
            carouselController: _controller,
          ),
          AspectRatio(
            aspectRatio: 17/7,
            child: Center(
              child: Text(
                places[_current],
                style: TextStyle(
                  letterSpacing: 8,
                  fontFamily: 'Electrolize',
                  fontSize: screenSize.width / 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
