import 'package:mywebsite/widgets/project_Dialog_WIdget.dart';
import 'package:mywebsite/widgets/project_dialog.dart';
import 'package:mywebsite/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../textOfWebsite/textOfProject.dart';

class FeaturedTiles3 extends StatelessWidget {
  FeaturedTiles3({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/GIF/foucs.gif',
    'assets/GIF/fouxa.gif',
    'assets/GIF/rise.gif',
  ];

  final List<String> title = ['focus app', 'fouxa.com', 'Rise Philosophy app'];

  final List<Widget> widgetdialog = [
    projectDialogue(gifLinkString: categories[3].gifLink, downloadCountBegin: 1, downloadCountEnd: 30, projectDescription: categories[3].projectDescription,URL: 'https://play.google.com/store/apps/details?id=com.fouxa.focustimekeeperapp',),
    projectDialogue(gifLinkString: categories[4].gifLink, downloadCountBegin: 0, downloadCountEnd: 0, projectDescription: categories[4].projectDescription,URL: 'https://fouxa.com',),
    projectDialogue(gifLinkString: categories[5].gifLink, downloadCountBegin: 1, downloadCountEnd: 30, projectDescription: categories[5].projectDescription,URL:'https://play.google.com/store/apps/details?id=com.risephilosophy.risephilosophy'),
  ];



  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container()

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
