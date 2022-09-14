import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywebsite/articlesLogic/articleJSON.dart';
import 'package:mywebsite/articlesLogic/articles.dart';
import 'package:mywebsite/articlesLogic/gridCards.dart';
import 'package:mywebsite/widgets/backgroundHomepage.dart';
import 'package:mywebsite/widgets/customWidgets.dart';
import 'package:mywebsite/widgets/featured_tiles2.dart';
import 'package:mywebsite/widgets/featured_tiles3.dart';
import 'package:mywebsite/widgets/flickerTextWidget.dart';
import 'package:mywebsite/widgets/web_scrollbar.dart';
import 'package:mywebsite/widgets/bottom_bar.dart';
import 'package:mywebsite/widgets/featured_heading2.dart';
import 'package:mywebsite/widgets/explore_drawer.dart';
import 'package:mywebsite/widgets/featured_heading.dart';
import 'package:mywebsite/widgets/featured_tiles.dart';
import 'package:mywebsite/widgets/responsive.dart';
import 'package:mywebsite/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';


// We focus on stories and technology: the smartest people, the biggest ideas, and the most impactful technology

class HomePage extends StatefulWidget {
  static const String route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const colorizeColors = [
    Colors.orange,
    Colors.red,
    Colors.deepOrangeAccent,
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
        iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),
        title: Text("V",style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),),
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
              SizedBox(height: 40,),
             /* Center(
                child: TextWithGoogleFontHomePage(text: ' Welcome to my digital brain '),
              ),*/

              Stack(
                children: [

                  SizedBox(height: 210,),

                  Container(
                    height:300,

                      width: screenSize.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/background.png'),
                        fit: BoxFit.fitHeight,
                      ),

                    ),
                  ),

                  Positioned.fill(
                    child: Align(
                        alignment: Alignment.center,
                        child:    backgroundHomepage()
                    ),
                  ),




                ],
              ),


          /*    Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenSize.height/8 ,),
                  Row(),
                  // TextWithGoogleFontBold(text: ' "I love to develop" '),


                ],
              ),*/
              //My projects

          Center(
            child: SizedBox(
              width: 270.0,
              height: 25,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.deepOrange,
                  fontFamily: 'Montserrat',
                ),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText('Welcome To My Digital Brain',
                    speed: Duration(milliseconds: 120)
                    ),

                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ),

              Divider(
                indent: ResponsiveWidget.isSmallScreen(context)?40:200,
                endIndent: ResponsiveWidget.isSmallScreen(context)?40:200,
                thickness: 0.1,
                color: Colors.grey,
              ),

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

              SizedBox(height: screenSize.height / 15),

              // See more button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 ElevatedButton(
                     onPressed:() {

                 Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) =>  articleJSON()),


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
              SizedBox(height: screenSize.height / 25),
              Divider(
                indent: ResponsiveWidget.isSmallScreen(context)?40:200,
                endIndent: ResponsiveWidget.isSmallScreen(context)?40:200,
                thickness: 0.1,
                color: Colors.grey,
              ),
          //    SizedBox(height: screenSize.height / 25),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}



/*  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                     scrollingTextSimple1(text: 'computer ਵਿਗਿਆਨ  Java भाषा JavaScript Web Technologies फ़ोन development ਸਾਫ਼ code Database SQL Firebase Android development TensorFlow Artificial ਬੁੱਧੀ HTML CSS '),

                      SizedBox(height: 7,),

                       scrollingTextSimple2(text: 'quantum अस्थिरता inflation expansion ਮਜ਼ਬੂਤ nuclear interaction particle-antiparticle annihilation deuterium and helium production ਘਣਤਾ perturbations recombination blackbody radiation ਸਥਾਨਕ contraction cluster formation reionization '),

                       SizedBox(height: 7,),

                      scrollingTextSimple3(text: 'ਵਿਕਾਸ evolution unicellular जीव oxidation mutation ਕੁਦਰਤੀ selection and evolution respiration ਭਿੰਨਤਾ प्रजनन fossilization '),

                      SizedBox(height: 7,),

                      scrollingTextSimple4(text: 'ਵਿਸ਼ਾਲ star formation deuterium ignition hydrogen fusion hydrogen depletion core सिकुड़न envelope विस्तार helium fusion carbon oxygen and silicon fusion लोहा production implosion supernova explosion ਧਾਤ injection ਤਾਰਾ formation supernova explosions star formation condensation planetesimal accretion ਗ੍ਰਹਿ differentiation crust solidification. '),

                      SizedBox(height: 7,),

//Mammal expansion. Glaciation. Homo sapiens manifestation. Animal domestication. Food surplus production. Civilization! Innovation. Exploration. Religion. Warring nations.

//Empire creation and destruction. Exploration. Colonization. Taxation without representation. Revolution. Constitution. Election. Expansion. Industrialization. Rebellion. Emancipation Proclamation.
// Invention. Mass production. Urbanization. Immigration. World conflagration. League of Nations. Suffrage extension. Depression. World conflagration.


//United Nations. Space exploration. Assassinations. Lunar excursions. Resignation. Computerization. World Trade Organization. Terrorism. Internet expansion. Reunification. Dissolution. World-Wide Web creation. Composition. Extrapolation?


                    ////// Braneworld  The Big Splat

                      scrollingTextSimple5(text: 'ब्रम्हांड time समय present वर्तमान'),
                      SizedBox(height: 10,),

                      scrollingTextSimple6(text: 'Earth Laika Worm at the core '),

                      SizedBox(height: 7,),

                      scrollingTextSimple7(text: '01010101010010101010101'),
                    ],
                  ),
          */