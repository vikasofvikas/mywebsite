import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';



class articleImage extends StatelessWidget {
  final String imagePath;
  const articleImage({
    required this.imagePath
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 200,
        width: 200,
        //   width: 290,
        child:
       Center(
         child:
         Image.asset(
           imagePath,
           fit: BoxFit.cover,
         ),
       )
    );
  }
}




// add gradient in text colors.
final Shader linearGradient1 = LinearGradient(
  colors: <Color>[Colors.purpleAccent.withOpacity(0.7),
    Colors.teal.withOpacity(0.1),
    Colors.red.withOpacity(0.4),
    Colors.blue.withOpacity(0.2),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 2000.0, 2500));

final Shader linearGradient2 = LinearGradient(
  colors: <Color>[Colors.blue.withOpacity(0.7),
    Colors.indigoAccent.withOpacity(0.3),
    Colors.purple.withOpacity(0.7),
    Colors.blue.withOpacity(0.2),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 1000.0, 2500));

final Shader linearGradient3 = LinearGradient(
  colors: <Color>[Colors.green.withOpacity(0.7),
    Colors.blue.withOpacity(0.3),
    Colors.brown.withOpacity(0.2),
    Colors.lightGreenAccent.withOpacity(0.7),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 1000.0, 2500));

final Shader linearGradient4 = LinearGradient(
  colors: <Color>[Colors.red.withOpacity(0.7),
    Colors.black87.withOpacity(0.3),
    Colors.orange.withOpacity(0.2),
    Colors.indigo.withOpacity(0.7),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 1500.0, 2));


class scrollingTextSimple1 extends StatelessWidget {
  final String text;
  const scrollingTextSimple1({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 25,
        //   width: 290,
        child:
        Marquee(
          textDirection: TextDirection.rtl,
          text: text,

          style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient1),

          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 10.0,
          velocity: 310.0,
         // pauseAfterRound: Duration(milliseconds: 1 ),
        //  startPadding: 10.0,
      //    accelerationDuration: Duration(seconds: 1),
         // accelerationCurve: Curves.linear,
        //  decelerationDuration: Duration(milliseconds: 500),
        //  decelerationCurve: Curves.easeOut,
        )
    );
  }
}


class scrollingTextSimple2 extends StatelessWidget {
  final String text;
  const scrollingTextSimple2({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 20,
        //   width: 290,
        child:
        Marquee(
          text: text,
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient2),          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,

          velocity: 340.0,
          pauseAfterRound: Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        )
    );
  }
}

class scrollingTextSimple3 extends StatelessWidget {
  final String text;
  const scrollingTextSimple3({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 25,
        //   width: 290,
        child:
        Marquee(
          textDirection: TextDirection.rtl,
          text: text,
          style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient3),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 315.0,
          pauseAfterRound: Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        )
    );
  }
}

class scrollingTextSimple4 extends StatelessWidget {
  final String text;
  const scrollingTextSimple4({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 15,
        //   width: 290,
        child:
        Marquee(
          textDirection: TextDirection.rtl,
          text: text,
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient4),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 230.0,
          pauseAfterRound: Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        )
    );
  }
}

class scrollingTextSimple5 extends StatelessWidget {
  final String text;
  const scrollingTextSimple5({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 25,
        //   width: 290,
        child:
        Marquee(
          textDirection: TextDirection.rtl,
          text: text,
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent.withOpacity(0.2),
              fontSize: 21
          ),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 100.0,
          pauseAfterRound: Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        )
    );
  }
}

class scrollingTextSimple6 extends StatelessWidget {
  final String text;
  const scrollingTextSimple6({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 25,
        //   width: 290,
        child:
        Marquee(
          textDirection: TextDirection.rtl,
          text: text,
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent.withOpacity(0.2),
              fontSize: 21
          ),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 100.0,
          pauseAfterRound: Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        )
    );
  }
}

class scrollingTextSimple7 extends StatelessWidget {
  final String text;
  const scrollingTextSimple7({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 25,
        //   width: 290,
        child:
        Marquee(
          textDirection: TextDirection.rtl,
          text: text,
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent.withOpacity(0.2),
              fontSize: 21
          ),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 100.0,
          pauseAfterRound: Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        )
    );
  }
}
