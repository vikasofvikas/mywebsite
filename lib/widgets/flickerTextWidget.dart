import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mywebsite/widgets/responsive.dart';


class flickerText1 extends StatelessWidget {
  final String text1; final String text2; final String text3; final String text4; final String text5; final String text6; final String text7;

  const flickerText1({
    required this.text1, required this.text2, required this.text3, required this.text4,required this.text5,required this.text6,required this.text7,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveWidget.isSmallScreen(context)?100:150,
      height: 15,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 12,
          color: Colors.blue,
        /*  shadows: [
            Shadow(
              blurRadius: 7.0,
              color: Colors.white,
              offset: Offset(0, 0),
            ),
          ],*/
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FadeAnimatedText(text1,
                duration: Duration(seconds: 5),
              textStyle: const TextStyle(
                color: Colors.indigo,
              )
            ),
            FadeAnimatedText(text2,
                duration: Duration(seconds: 3),
                textStyle: const TextStyle(
                  color: Colors.brown,
                )
            ),
            FadeAnimatedText(text3,
                duration: Duration(seconds: 7),
                textStyle: const TextStyle(
                  color: Colors.grey,
                )
            ),
            FadeAnimatedText(text4,
                duration: Duration(seconds: 9),
                textStyle: const TextStyle(
                  color: Colors.redAccent,
                )
            ),
            FadeAnimatedText(text5,
                duration: Duration(seconds:  2),
                textStyle: const TextStyle(
                  color: Colors.blueAccent,
                )
            ),
            FadeAnimatedText(text6,
                duration: Duration(seconds: 3),
                textStyle: const TextStyle(
                  color: Colors.indigo,
                )
            ),
            FadeAnimatedText(text7,
                duration: Duration(seconds: 1),
                textStyle: const TextStyle(
                  color: Colors.cyanAccent,
                )
            ),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}

class flickerText2 extends StatelessWidget {
  final String text1; final String text2; final String text3; final String text4; final String text5; final String text6; final String text7;

  const flickerText2({
    required this.text1, required this.text2, required this.text3, required this.text4,required this.text5,required this.text6,required this.text7,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveWidget.isSmallScreen(context)?100:150,
      height: 15,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 12,
          color: Colors.blue,
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FadeAnimatedText(text1,
              duration: Duration(seconds: 5),
                textStyle: const TextStyle(
                  color: Colors.indigoAccent,
                )
                ),
            FadeAnimatedText(text2,
                duration: Duration(seconds: 9),
                textStyle: const TextStyle(
                  color: Colors.green,
                )
                ),
            FadeAnimatedText(text3,
                duration: Duration(seconds: 5),
                textStyle: const TextStyle(
                  color: Colors.pink,
                )
                ),
            FadeAnimatedText(text4,
                duration: Duration(seconds: 2),
                textStyle: const TextStyle(
                  color: Colors.deepOrange,
                )
                ),
            FadeAnimatedText(text5,
                duration: Duration(seconds:  5),
                textStyle: const TextStyle(
                  color: Colors.deepPurpleAccent,
                )
                ),
            FadeAnimatedText(text6,
                duration: Duration(seconds: 3),
                textStyle: const TextStyle(
                  color: Colors.green,
                )
                ),
            FadeAnimatedText(text7,
                duration: Duration(seconds: 2),
                textStyle: const TextStyle(
                  color: Colors.teal,
                )
                ),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}


class flickerText3 extends StatelessWidget {
  final String text1; final String text2; final String text3; final String text4; final String text5; final String text6; final String text7;

  const flickerText3({
    required this.text1, required this.text2, required this.text3, required this.text4,required this.text5,required this.text6,required this.text7,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveWidget.isSmallScreen(context)?100:150,
      height: 15,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 12,
          color: Colors.blue,
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FadeAnimatedText(text1,
                duration: Duration(seconds: 2),
                textStyle: const TextStyle(
                  color: Colors.cyanAccent,
                )
                 ),
            FadeAnimatedText(text2,
                duration: Duration(seconds: 5),
                textStyle: const TextStyle(
                  color: Colors.grey,
                )
                 ),
            FadeAnimatedText(text3,
                duration: Duration(seconds: 4),
                textStyle: const TextStyle(
                  color: Colors.redAccent,
                )),
            FadeAnimatedText(text4,
                duration: Duration(seconds: 1),
                textStyle: const TextStyle(
                  color: Colors.pink,
                )),
            FadeAnimatedText(text5,
                duration: Duration(seconds: 2),
                textStyle: const TextStyle(
                  color: Colors.brown,
                )),
            FadeAnimatedText(text6,
                duration: Duration(seconds: 4),
                textStyle: const TextStyle(
                  color: Colors.indigoAccent,
                )),
            FadeAnimatedText(text7,
                duration: Duration(seconds: 2),
                textStyle: const TextStyle(
                  color: Colors.grey,
                )),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}


class flickerText4 extends StatelessWidget {
  final String text1; final String text2; final String text3; final String text4; final String text5; final String text6; final String text7;

  const flickerText4({
    required this.text1, required this.text2, required this.text3, required this.text4,required this.text5,required this.text6,required this.text7,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveWidget.isSmallScreen(context)?100:150,
      height: 15,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 12,
          color: Colors.blue,
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FadeAnimatedText(text1,
                duration: Duration(seconds: 2),
                textStyle: const TextStyle(
                  color: Colors.deepOrangeAccent,
                )

                  ),
            FadeAnimatedText(text2,
                duration: Duration(seconds:  5),
                textStyle: const TextStyle(
                  color: Colors.blueGrey,
                )
                 ),
            FadeAnimatedText(text3,
                duration: Duration(seconds: 4),
                textStyle: const TextStyle(
                  color: Colors.pinkAccent,
                )
                 ),
            FadeAnimatedText(text4,
                duration: Duration(seconds: 5),
                textStyle: const TextStyle(
                  color: Colors.deepPurpleAccent,
                )
                 ),
            FadeAnimatedText(text5,
                duration: Duration(seconds: 6),
                textStyle: const TextStyle(
                  color: Colors.pink,
                )
               ),
            FadeAnimatedText(text6,
                duration: Duration(seconds: 2),
                textStyle: const TextStyle(
                  color: Colors.white54,
                )
               ),
            FadeAnimatedText(text7,
                duration: Duration(seconds: 4),
                textStyle: const TextStyle(
                  color: Colors.cyanAccent,
                )
              ),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}


class flickerText5 extends StatelessWidget {
  final String text1; final String text2; final String text3; final String text4; final String text5; final String text6; final String text7;

  const flickerText5({
    required this.text1, required this.text2, required this.text3, required this.text4,required this.text5,required this.text6,required this.text7,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.0,
      height: 15,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 12,
          color: Colors.blue,
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FadeAnimatedText(text1,
                duration: Duration(seconds: 6)),
            FadeAnimatedText(text2,
                duration: Duration(seconds: 5)),
            FadeAnimatedText(text3,
                duration: Duration(seconds: 2)),
            FadeAnimatedText(text4,
                duration: Duration(seconds: 5)),
            FadeAnimatedText(text5,
                duration: Duration(seconds: 2)),
            FadeAnimatedText(text6,
                duration: Duration(seconds: 5)),
            FadeAnimatedText(text7,
                duration: Duration(seconds: 7)),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}
