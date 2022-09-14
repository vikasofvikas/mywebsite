import 'package:mywebsite/articles/onHomepage1.dart';
import 'package:mywebsite/articles/onHomepage2.dart';
import 'package:mywebsite/articles/onHomepage3.dart';
import 'package:mywebsite/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;


  final List<Widget> articlePage = [
    onHomepage1(),
    onHomepage2(),
    onHomepage3(),
  ];
  final List<String> title = ['Exploring the most common sensors that are available in smartphones', 'Improve your mobile application functionality with on device machine learning', 'Understanding the basics of android operating system. It past, present and future.'];

  final List<String> description = ['Just like human body has senses to naviagte in the world through getting and processing information, your phone also has sensors for its proper functioning. We will be exploring most commonly used sensors in the smartphone. '
      ,
                                     'With the advancement in computing power of smartphones, developers can build applications that can implement on device machine learning operations. The biggest advantage of this is no annoying latency issues because there will be no sending and receiving data to the cloud and it also eliminates the need of internet connectivity.',
                                     'Review of flutter for web development and why it needs improvement'];


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
                  ...Iterable<int>.generate(title.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30,),
                            InkWell(
                              onTap: (){

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  articlePage[pageIndex]),
                                );
                              },
                              //
                              child: Container(
                              //    height: screenSize.width / 4.0,
                                  width: screenSize.width / 1.5,
                                decoration: BoxDecoration(
                                  border: const Border(
                                    left: BorderSide( //                   <--- right side
                                      color: Colors.deepOrange,
                                      width: 3.0,
                                    ),
                                  ),
                                    color: Theme.of(context).backgroundColor,

                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,right: 8, ),
                                      child: AutoSizeText(
                                        minFontSize: 16,
                                        maxFontSize: 16,
                                        title[pageIndex],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                       // textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .primaryTextTheme
                                              .subtitle1!
                                              .color,
                                        ),
                                      ),
                                    ),

                                    Divider(
                                    //  indent: ResponsiveWidget.isSmallScreen(context)?40:200,
                                     // endIndent: ResponsiveWidget.isSmallScreen(context)?40:200,
                                      thickness: 0.5,
                                      color: Colors.grey,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,right: 8, bottom: 16),
                                      child: AutoSizeText(description[pageIndex],
                                        maxLines: 4,
                                        minFontSize: 16,
                                        maxFontSize: 16,
                                        overflow: TextOverflow.ellipsis,

                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                        //  fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .primaryTextTheme
                                              .subtitle1!
                                              .color,
                                        ),),
                                    ),

                                  ],
                                )
                              ),
                            ),
                     SizedBox(height: 40,),
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
                  ...Iterable<int>.generate(title.length).map(
                    (int pageIndex) => Column(
                      children: [
                        InkWell(
                          onTap: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  articlePage[pageIndex]),
                            );
                          },
                          child: Container(
                            //  height: screenSize.width / 12,
                              width: screenSize.width / 3.8,
                              decoration: BoxDecoration(
                                border: Border(
                                  left: BorderSide( //                   <--- right side
                                    color: Colors.deepOrange,
                                    width: 3.0,
                                  ),
                                ),
                                color: Theme.of(context).backgroundColor,

                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),




                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 8, ),
                                    child: AutoSizeText(
                                           title[pageIndex],
                                      maxLines: 2,
                                      minFontSize: 16,
                                      maxFontSize: 16,
                                      overflow: TextOverflow.ellipsis,
                                          // textAlign: TextAlign.left,
                                          style: TextStyle(

                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .primaryTextTheme
                                                .subtitle1!
                                                .color,
                                          ),
                                        ),
                                  ),


                                  Divider(
                                    //  indent: ResponsiveWidget.isSmallScreen(context)?40:200,
                                    // endIndent: ResponsiveWidget.isSmallScreen(context)?40:200,
                                    thickness: 0.5,
                                    color: Colors.grey,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 8),
                                    child: AutoSizeText(description[pageIndex],
                                      minFontSize: 16,
                                      maxFontSize: 16,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,

                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        //  fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .primaryTextTheme
                                            .subtitle1!
                                            .color,
                                      ),),
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              )
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
