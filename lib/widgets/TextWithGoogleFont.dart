import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';



class TextWithGoogleFont extends StatelessWidget {
  final String text;
  const TextWithGoogleFont({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: GoogleFonts.montserrat(
        color: Colors.deepOrangeAccent,
        fontSize: 20,
      //  fontWeight: FontWeight.w300,

      ),
    );
  }
}

class TextWithGoogleFontBold extends StatelessWidget {
  final String text;
  const TextWithGoogleFontBold({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: GoogleFonts.montserrat(
        fontSize: 20,
        color: Colors.deepOrangeAccent,
       // fontWeight: FontWeight.bold,

      ),
    );
  }
}

class TextWithGoogleFontHomePage extends StatelessWidget {
  final String text;
  const TextWithGoogleFontHomePage({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: GoogleFonts.montserrat(
        fontSize: 22,
        color: Colors.deepOrangeAccent,

       // fontWeight: FontWeight.bold,

      ),
    );
  }
}

class projectDescriptionWithGoogleFont extends StatelessWidget {
  final String text;
  const projectDescriptionWithGoogleFont({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.left,
      text,
      style: GoogleFonts.montserrat(
        fontSize: 16,
        height: 1.5,
        fontWeight: FontWeight.w300,
        color: Colors.deepOrangeAccent,
      ),
    );
  }
}

class articleTextWithGoogleFont extends StatelessWidget {
  final String text;
  const articleTextWithGoogleFont({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.left,
      text,
      style: GoogleFonts.montserrat(
        fontSize: 18,
        height: 1.5,
        fontWeight: FontWeight.w300,
        color: Theme.of(context)
            .primaryTextTheme
            .bodyText1!
            .color,
      ),
    );
  }
}