import 'package:mywebsite/widgets/project_Dialog_WIdget.dart';
import 'package:mywebsite/widgets/project_dialog.dart';
import 'package:mywebsite/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../textOfWebsite/textOfProject.dart';

class FeaturedTiles2 extends StatelessWidget {
  FeaturedTiles2({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/GIF/plant.gif',
    'assets/GIF/quiz.gif',
    'assets/GIF/object.gif',
  ];

  final List<String> assetsForSmallScreen = [
    'assets/GIF/plant.gif',
    'assets/GIF/quiz.gif',
    'assets/GIF/object.gif',
    'assets/GIF/foucs.gif',
    'assets/GIF/fouxa.gif',
    'assets/GIF/rise.gif',
  ];

  final List<String> title = ['Plant Disease Detection', 'Quiz app', 'Object detection App'];
  final List<String> titleForSmallScreen = ['Plant Disease Detection', 'Quiz app', 'Object detection App','focus app', 'fouxa.com', 'Rise Philosophy app'];



  final List<Widget> widgetdialog = [
    projectDialogue(gifLinkString: categories[0].gifLink, downloadCountBegin: 15000, downloadCountEnd: 32000, projectDescription: categories[0].projectDescription,URL: 'https://play.google.com/store/apps/details?id=com.fouxa.plantdiseasedetection',),
    projectDialogue(gifLinkString: categories[1].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[1].projectDescription,URL: 'https://play.google.com/store/apps/details?id=com.fouxa.bodylanguagepsychologysecrets',),
    projectDialogue(gifLinkString: categories[2].gifLink, downloadCountBegin: 1, downloadCountEnd: 1400, projectDescription: categories[2].projectDescription,URL: 'https://play.google.com/store/apps/details?id=com.fouxa.objectdetectionpro',),

  ];

  final List<Widget> widgetdialogForSmallScreen = [
    projectDialogue(gifLinkString: categories[0].gifLink, downloadCountBegin: 13000, downloadCountEnd: 27000, projectDescription: categories[0].projectDescription,URL: 'https://play.google.com/store/apps/details?id=com.fouxa.plantdiseasedetection',),
    projectDialogue(gifLinkString: categories[1].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[1].projectDescription,URL: 'https://play.google.com/store/apps/details?id=com.fouxa.bodylanguagepsychologysecrets',),
    projectDialogue(gifLinkString: categories[2].gifLink, downloadCountBegin: 1, downloadCountEnd: 1400, projectDescription: categories[2].projectDescription,URL: 'https://play.google.com/store/apps/details?id=com.fouxa.objectdetectionpro',),
    projectDialogue(gifLinkString: categories[3].gifLink, downloadCountBegin: 1, downloadCountEnd: 30, projectDescription: categories[3].projectDescription,URL: 'https://play.google.com/store/apps/details?id=com.fouxa.focustimekeeperapp',),
    projectDialogue(gifLinkString: categories[4].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[4].projectDescription,URL: 'https://fouxa.com',),
    projectDialogue(gifLinkString: categories[5].gifLink, downloadCountBegin: 1, downloadCountEnd: 30, projectDescription: categories[5].projectDescription,URL:'https://play.google.com/store/apps/details?id=com.risephilosophy.risephilosophy'),
  ];



  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
      padding: EdgeInsets.only(top: screenSize.height / 50),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: screenSize.width / 15),
            ...Iterable<int>.generate(assetsForSmallScreen.length).map(
                  (int pageIndex) =>  Row(
                children: [

                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){

                              showDialog(
                                context: context,
                                builder: (context) => widgetdialogForSmallScreen[pageIndex],
                              );
                            },
                            child: SizedBox(
                                height: screenSize.width / 2.5,
                                width: screenSize.width / 1.5,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(7),
                                    child:

                                    Container(
                                        child: Image.asset( assetsForSmallScreen[pageIndex], fit: BoxFit.cover,)
                                    ),


                                  ),

                              ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(
                              top: screenSize.height / 70,
                            ),
                            child: Text(
                              titleForSmallScreen[pageIndex],
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

    //FOR BIG SCREEN

        : Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...Iterable<int>.generate(assets.length).map(
                (int pageIndex) =>
                 Column(
              children: [
                  InkWell(
                    onTap: (){

                      showDialog(
                        context: context,
                        builder: (context) => widgetdialog[pageIndex],
                      );
                    },

                    child: SizedBox(
                      height: screenSize.width / 6,
                      width: screenSize.width / 3.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child:  Container(
                            child: Image.asset( assets[pageIndex], fit: BoxFit.cover,)
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
