import 'package:mywebsite/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
  ];

  final List<String> title = ['Funding in Startupsk', 'GPT-3 OpenAI', 'Future of Farming'];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 3, color: Colors.deepOrangeAccent.withOpacity(0.9,)
                                ),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: SizedBox(
                                height: screenSize.width / 2.5,
                                width: screenSize.width / 1.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: Image.asset(
                                    assets[pageIndex],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height / 70,
                              ),
                              child: Text(
                                title[pageIndex],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle1!
                                      .color,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenSize.width / 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        :
           Padding(
              padding: EdgeInsets.only(
                top: screenSize.height * 0.06,
                left: screenSize.width / 15,
                right: screenSize.width / 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.deepOrangeAccent.withOpacity(0.9,)
                              ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: SizedBox(
                            height: screenSize.width / 6,
                            width: screenSize.width / 3.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                assets[pageIndex],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenSize.height / 70,
                          ),
                          child: Text(
                            title[pageIndex],
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context)
                                  .primaryTextTheme
                                  .subtitle1!
                                  .color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            
        );
  }
}
