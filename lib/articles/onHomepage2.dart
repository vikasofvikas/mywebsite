import 'package:flutter/material.dart';

import '../../widgets/TextWithGoogleFont.dart';
import '../../widgets/responsive.dart';
import '../widgets/customWidgets.dart';


class onHomepage2 extends StatefulWidget {




  @override
  _projectDialogState createState() => _projectDialogState();
}
class _projectDialogState extends State<onHomepage2> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Theme.of(context).backgroundColor,
              iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),

              pinned: false,
              floating: true,
              // forceElevated: innerBoxIsScrolled,

            ),
          ];
        },

        body: Container(
          color: Theme.of(context).backgroundColor,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),

            child:Center(

              child:
              Padding(
                padding:  EdgeInsets.only(
                  left: ResponsiveWidget.isSmallScreen(context)? 20.0 :320,
                  right: ResponsiveWidget.isSmallScreen(context)? 20.0 :320,

                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:   [
                      TextWithGoogleFontBold(text: "Improve your mobile application functionality with on device machine learning"),

                      SizedBox(height: 20,),
                      articleTextWithGoogleFont( text:"Companies like Apple and Google are pushing boundaries with their chips. Apple's A16 bionic can perform heavy machine learning computation with a dedicated chip. Google’s Tensorchip is capable of real-time language translation for captions, text-to-speech without an internet connection, image processing, and other machine learning-based capabilities, like live translation and captions. "),

                      articleTextWithGoogleFont( text:'What functionalities can you add to the app using on-device computation?'),


                      SizedBox(height: 25,),
//On-device speech recognition
                      TextWithGoogleFontBold(text: "On-device speech recognition"),
                      articleImage(imagePath: 'assets/images/articles/speech.png'),

                      articleTextWithGoogleFont( text:'In the good old days, developers struggled with speech recognition because of delays in the response time but now speech recognition can be done using on-device computation. It makes the whole process of giving commands to the assistant more natural and fast. Google Pixel phones can even present subtitles of podcasts, videos, and music without an internet connection taking the user experience to the next level.'),


                      SizedBox(height: 25,),
                      TextWithGoogleFontBold(text: "Image enhancing"),
                      articleImage(imagePath: 'assets/images/articles/imageenhancing.png'),
                      articleTextWithGoogleFont( text:'Smartphones are now performing better than DSLRs in low lighting thanks to machine algorithms that enhance the image quality. By training neural networks on a large number of images, algorithms know how to enhance images according to given conditions. '),


                      SizedBox(height: 25,),
                      TextWithGoogleFontBold(text: "On-device image recognition"),
                      articleImage(imagePath: 'assets/images/articles/imagerecognition.png'),
                      articleTextWithGoogleFont( text:'Want to translate an image from a language? Using image recognition in your smartphone you can easily and accurately translate almost any language using machine learning. These days image recognition is also being used to tell users about the ingredients and nutritional value of the food.'),


                      SizedBox(height: 25,),
                      TextWithGoogleFontBold(text: "Enhanced security and privacy"),
                      articleImage(imagePath: 'assets/images/articles/seucrityandprivacy.png'),
                      articleTextWithGoogleFont( text:"Modern chips in smartphones eliminate the need to send biometric data to the cloud for user authentication. Apple’s bionic chip can do user verification using facial recognition algorithms. It stores facial data on the chip which drastically improves security and reduces privacy leak risks.  Google’s face unlock technology also stores facial information on chip and use it for user verification. "),



                      SizedBox(height: 25,),
                    ]
                ),
              ),
            ),
          ),
        ),
      ),


    );

  }
}