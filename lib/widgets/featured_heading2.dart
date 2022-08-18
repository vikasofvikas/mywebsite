import 'package:mywebsite/widgets/responsive.dart';
import 'package:flutter/material.dart';

import 'TextWithGoogleFont.dart';

class FeaturedHeading2 extends StatelessWidget {
  const FeaturedHeading2({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(),
          TextWithGoogleFont(text: 'Recent Projects'),
          SizedBox(height: 5),

          SizedBox(height: 20),
        ],
      )
          : Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          TextWithGoogleFontBold(text: 'Recent Projects'),

        ],
      ),
    );
  }
}
