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
      style: GoogleFonts.rokkitt(
        color: Colors.deepOrangeAccent,
        fontSize: 24,
        fontWeight: FontWeight.w300,

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
      style: GoogleFonts.rokkitt(
        fontSize: 26,
        color: Colors.deepOrangeAccent,
        fontWeight: FontWeight.bold,

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
      style: GoogleFonts.lato(
        fontSize: 20,
        height: 1.5,
        fontWeight: FontWeight.w300,
        color: Colors.deepOrangeAccent,
      ),
    );
  }
}