import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywebsite/widgets/featured_tiles2.dart';
import 'package:mywebsite/widgets/featured_tiles3.dart';
import 'package:mywebsite/widgets/web_scrollbar.dart';
import 'package:mywebsite/widgets/bottom_bar.dart';
import 'package:mywebsite/widgets/featured_heading2.dart';
import 'package:mywebsite/widgets/explore_drawer.dart';
import 'package:mywebsite/widgets/featured_heading.dart';
import 'package:mywebsite/widgets/featured_tiles.dart';
import 'package:mywebsite/widgets/responsive.dart';
import 'package:mywebsite/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';

import '../widgets/TextWithGoogleFont.dart';
import '../widgets/articles.dart';

// We focus on stories and technology: the smartest people, the biggest ideas, and the most impactful technology

class HomePage extends StatefulWidget {
  static const String route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const colorizeColors = [
    Colors.orange,
    Colors.redAccent,
    Colors.green,
    Colors.indigo,
    Colors.tealAccent,
    Colors.pink,


    Colors.deepOrangeAccent,
    Colors.white,
  ];
  static const colorizeTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
  );
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor:
                  Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
        iconTheme: IconThemeData(        color: Colors.deepOrangeAccent,
        ),
              title: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    speed: const Duration(seconds: 15),
                    'V',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),

                ],
                isRepeatingAnimation: false,
                onTap: () {
                  print("Tap Event");
                },
              ),
            )


          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),
      drawer: const mywebsiteDrawer(),
      body:

      WebScrollbar(
        color: Colors.blueGrey,
        backgroundColor: Colors.blueGrey.withOpacity(0.3),
        width: 10,
        heightFraction: 0.3,
        controller: _scrollController,
        child: SingleChildScrollView(

          controller: _scrollController,


          child: Column(
            children: [
              SizedBox(height: screenSize.height/10 ,),
              Stack(
                children: [
                  Container(
                    height: screenSize.height * 0.35,
                    width: screenSize.width,
                    decoration:  BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter ,
                            end: Alignment.bottomCenter ,
                            colors: [Colors.white.withOpacity(0.2),Colors.orange.withOpacity(0.5),Colors.white.withOpacity(0.2),])),

                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: screenSize.height/8 ,),
                      Row(),
                      TextWithGoogleFontBold(text: ' "I love to develop" '),


                    ],
                  ),
                ],
              ),
              //My projects
              FeaturedHeading2(
                screenSize: screenSize,
              ),
              FeaturedTiles2(screenSize: screenSize),
              FeaturedTiles3(screenSize: screenSize),


            //Articles
              Container(
                child: Column(
                  children: [
                    FeaturedHeading(
                      screenSize: screenSize,
                    ),
                    FeaturedTiles(screenSize: screenSize)
                  ],
                ),
              ),

              SizedBox(height: 25,),

              // See more button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 ElevatedButton(
                     onPressed:() {
                 Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Articles()),
                 );

                     },
                     style: ElevatedButton.styleFrom(
                         onPrimary: Colors.white,
                         primary: Colors.deepOrangeAccent,
                         onSurface: Colors.grey,
                         side: BorderSide(color: Colors.orange, width: 2),
                         elevation: 20,
                         minimumSize: Size(150,50),
                         shadowColor: Colors.grey,
                         padding: EdgeInsets.only(
                             left: 80,
                             right: 80,
                             top: 15,
                             bottom: 15
                         )
                     ),
                     child:Text("See more")

                 )
                ],
              ),


              SizedBox(height: screenSize.height / 10),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
