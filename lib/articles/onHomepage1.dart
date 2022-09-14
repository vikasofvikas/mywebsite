import 'package:flutter/material.dart';
import 'package:mywebsite/widgets/customWidgets.dart';

import '../../widgets/TextWithGoogleFont.dart';
import '../../widgets/responsive.dart';


class onHomepage1 extends StatefulWidget {




  @override
  _projectDialogState createState() => _projectDialogState();
}
class _projectDialogState extends State<onHomepage1> with SingleTickerProviderStateMixin {


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
                      TextWithGoogleFontBold(text: "Exploring the most common sensors that are available in smartphones"),

                      SizedBox(height: 20,),
                      /* Container(
                              child: Image.network(categories[0].gifLink, width: 255,height: 255,)
                          ),*/
                      articleTextWithGoogleFont( text:'Just like human body has senses to naviagte in the world through getting and processing information, your phone also has sensors for its proper functioning. We will be exploring most commonly used sensors in the smartphone.'),
                     SizedBox(height: 25,),
                      TextWithGoogleFontBold(text: "Accelerometer"),
                          articleImage(imagePath: 'assets/images/articles/lol.png'),

                          articleTextWithGoogleFont( text:'Ever wondered how your phone calculates the number of steps that you have walked, thanks to the accelerometer sensor. They are the reason that make AR(augmented reality) apps such fun. It measures motion like tilting, swinging, shaking and rotating. But how does an accelerometer work? As the name suggests it measures acceleration. Do you know you are feeling an acceleration right now even if you are just sitting reading this text. Given that you are on earth right now, you are experiencing what is called a static force, gravity. This force is responsible for setting the orientation of your mobile device when you tilt it to watch videos. There is a piezoelectric crystal  inside the accelerometer that changes the voltages according to the acceleration experienced by the device. These signals are then sent to perform appropriate action by the mobile phone.'),
                      SizedBox(height: 25,),

                      TextWithGoogleFontBold(text: "Gyroscope"),
                      articleImage(imagePath: 'assets/images/articles/gyro.png'),

                      articleTextWithGoogleFont( text:'It is used in the rocket but now it is also an important part of the smartphone in your pocket. It helps to detect the orientation of the phone along six axes. In your smartphone, gyro adds more information to the data received by the accelerometer (rotation and twist) that helps you to play games by changing the orientation of your smartphone. The gyroscope used in the smartphone is different from the traditional gyroscopes, they are much smaller. It gives an additional way for users to interact with their smartphone.'),

                      SizedBox(height: 25,),

                      TextWithGoogleFontBold(text: "Magnetometer"),
                      articleImage(imagePath: 'assets/images/articles/magneto.png'),

                      articleTextWithGoogleFont( text:'This sensor helps you to tell which way is north. It does this by varying voltage and then giving this information to the sensor. On a very high level, this sensor includes flowing electrons that change their path(hence voltage) according to the magnetic field they interact with. Because of this sensor you can also use your phone as a metal detector(but not a precise one). With the combination of accelerometer, gyroscope and magnetometer you can get the precise location of your smartphone.'),

                      SizedBox(height: 25,),

                      TextWithGoogleFontBold(text: "Fingerprint sensor"),
                      articleImage(imagePath: 'assets/images/articles/finger.png'),
                      articleTextWithGoogleFont( text:'Biometric sensors like fingerprint sensors and face recognition help users to access smartphones in a convenient way (compared to using pin code every time you try to access your phone). The most advanced and commonly used fingerprint sensor is the ultrasonic sensor. Bats use ultrasound waves to navigate their path in the night by creating a map of their environment so that they can avoid obstructions in their path. Similarly, your smartphone has this ultrasonic sensor that throws ultrasonic waves to your finger and creates a map of the ridges of your finger. When you try to unlock the phone, it verifies whether the stored map of the finger inside the phone memory is the same as the finger trying to unlock the smartphone.'),

                      SizedBox(height: 25,),

                      TextWithGoogleFontBold(text: "Proximity sensor"),
                      articleImage(imagePath: 'assets/images/articles/proximity.png'),

                      articleTextWithGoogleFont( text:'Proximity sensors consist of emitter and receiver. Emitter emits the infrared waves and receiver receives the infrared waves. Based on the intensity of light received, the sensor can detect how far or close the object is. It prevents accidental touches of your ear or cheeks while making a phone call.'),
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