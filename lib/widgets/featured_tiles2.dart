import 'package:mywebsite/widgets/auth_dialog.dart';
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
    'https://media.giphy.com/media/d2ZhOvMCq7tcTM0o/giphy.gif',
    'https://media.giphy.com/media/l0OWitHsmBZRYAqbK/giphy.gif',
    'https://media.giphy.com/media/46zAYJMkSG66iTeAje/giphy.gif',
  ];

  final List<String> assetsForSmallScreen = [
    'https://media.giphy.com/media/d2ZhOvMCq7tcTM0o/giphy.gif',
    'https://media.giphy.com/media/l0OWitHsmBZRYAqbK/giphy.gif',
    'https://media.giphy.com/media/46zAYJMkSG66iTeAje/giphy.gif',
    'https://media.giphy.com/media/d2ZhOvMCq7tcTM0o/giphy.gif',
    'https://media.giphy.com/media/l0OWitHsmBZRYAqbK/giphy.gif',
    'https://media.giphy.com/media/46zAYJMkSG66iTeAje/giphy.gif',
  ];

  final List<String> title = ['Funding in Startupspp', 'Startup Jargon', 'Future of Farming'];
  final List<String> titleForSmallScreen = ['Funding in Start99', 'Startup Jargon', 'Future of Farming','Funding in Startups22', 'Startup Jargon', 'Future of Farming'];



  final List<Widget> widgetdialog = [
    projectDialogue(gifLinkString: categories[0].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[0].projectDescription),
    projectDialogue(gifLinkString: categories[1].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[1].projectDescription),
    projectDialogue(gifLinkString: categories[2].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[2].projectDescription),

  ];

  final List<Widget> widgetdialogForSmallScreen = [
    projectDialogue(gifLinkString: categories[0].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[0].projectDescription),
    projectDialogue(gifLinkString: categories[1].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[1].projectDescription),
    projectDialogue(gifLinkString: categories[2].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[2].projectDescription),
    projectDialogue(gifLinkString: categories[0].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[0].projectDescription),
    projectDialogue(gifLinkString: categories[1].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[1].projectDescription),
    projectDialogue(gifLinkString: categories[2].gifLink, downloadCountBegin: 15000, downloadCountEnd: 30000, projectDescription: categories[2].projectDescription),
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
                                        child: Image.network( assetsForSmallScreen[pageIndex], fit: BoxFit.cover,)
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
                            child: Image.network( assets[pageIndex], fit: BoxFit.cover,)
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