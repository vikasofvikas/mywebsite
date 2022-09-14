import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class URLButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final String URL;

  const URLButton({
    required this.imagePath,
    required this.text,
    required this.URL
  });

  @override
  Widget build(BuildContext context) {
    return

      InkWell(
        onTap: () {

          _launchURLBrowser() async {
            var url = Uri.parse(URL);
            if (await canLaunchUrl(url)) {
            return await launchUrl(url);
            } else {
              throw 'Could not launch $url';
            }
          }

          _launchURLBrowser();
        },
        child: Row(
          children: [

            Container(
                height: 25,
                width: 25,
                child: Image.asset(imagePath)

            ),


            Text(text,style: TextStyle(color: Colors.deepOrange,),)
          ],
        ),
      );
  }
}