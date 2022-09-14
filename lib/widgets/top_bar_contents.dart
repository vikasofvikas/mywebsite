import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:mywebsite/articlesLogic/articleJSON.dart';
import 'package:mywebsite/articlesLogic/articles.dart';
import 'package:mywebsite/widgets/aboutme.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  static const colorizeColors = [
    Colors.deepOrangeAccent,
    Colors.deepOrangeAccent,
    Colors.orange,
    Colors.redAccent,
    Colors.green,
    Colors.indigo,
    Colors.tealAccent,
    Colors.pink,
    Colors.deepOrangeAccent,
    Colors.white,
    Colors.deepOrangeAccent,
    Colors.deepOrangeAccent,
    Colors.deepOrangeAccent,
    Colors.deepOrangeAccent,

  ];
  static const colorizeTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
  );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Theme.of(context).bottomAppBarColor.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedTextKit(
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


              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: screenSize.width / 16),


                    ElevatedButton(
                        onPressed:() {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  articleJSON()),
                          );

                        },
                        style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            primary: Colors.deepOrange,
                            onSurface: Colors.grey,
                            side: BorderSide(color: Colors.orange, width: 2),
                            elevation: 5,
                            minimumSize: Size(100,40),
                            shadowColor: Colors.grey,
                            padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 15,
                                bottom: 15
                            )
                        ),
                        child:Text("Articles",style: TextStyle(color: Colors.white),)

                    ),







                    SizedBox(width: screenSize.width / 40),

                    ElevatedButton(
                        onPressed:() {
                          showDialog(
                            context: context,
                            builder: (context) =>aboutMe(),
                          );

                        },
                        style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            primary: Colors.deepOrange,
                            onSurface: Colors.grey,
                            side: BorderSide(color: Colors.white54, width: 2),
                            elevation: 10,
                            minimumSize: Size(100,40),
                            shadowColor: Colors.grey,
                            padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 15,
                                bottom: 15
                            )
                        ),
                        child:Text("About me",style: TextStyle(color: Colors.white),)

                    ),



                  ],
                ),
              ),

              /*
              IconButton(
                icon: Icon(Icons.brightness_6),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                color: Colors.white,
                onPressed: () {
                  EasyDynamicTheme.of(context).changeTheme();
                },
              ),

               */

              /*
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: userEmail == null
                    ? () {
                        showDialog(
                          context: context,
                          builder: (context) => AuthDialog(),
                        );
                      }
                    : null,
                child: userEmail == null
                    ? Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 1,color: Colors.purple,),
                  ),
                      child: const Text(
                          'Contact Us',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                    )
                    : Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: imageUrl != null
                                ? NetworkImage(imageUrl!)
                                : null,
                            child: imageUrl == null
                                ? Icon(
                                    Icons.account_circle,
                                    size: 30,
                                  )
                                : Container(),
                          ),
                          SizedBox(width: 5),
                          Text(
                            name ?? userEmail!,
                            style: TextStyle(
                              color: _isHovering[3]
                                  ? Colors.white
                                  : Colors.white70,
                            ),
                          ),


                        ],
                      ),
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}
