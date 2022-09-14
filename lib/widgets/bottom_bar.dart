import 'package:mywebsite/utils/url_launcher.dart';
import 'package:mywebsite/widgets/info_text.dart';
import 'package:mywebsite/widgets/responsive.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(

      decoration:  BoxDecoration(
        color: Theme.of(context).backgroundColor,
        image:  DecorationImage(


          image: ResponsiveWidget.isSmallScreen(context)
              ? AssetImage("assets/images/footersmall.png"):AssetImage("assets/images/footer.png"),


          fit: BoxFit.contain,
        ),
      ),

      padding: EdgeInsets.only(left: 30,right: 30,bottom: 30),

      child: ResponsiveWidget.isSmallScreen(context)
          ? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //  crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
 Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: screenSize.height / 5),

    URLButton(imagePath: "assets/images/linkedin.png", text: "LinkedIn", URL: "https://www.linkedin.com/in/vikasdeep-singh-saini-2575b9231/"),
    SizedBox(width: 10,),

    URLButton(imagePath: "assets/images/twitter.png", text: "Twitter", URL: "https://twitter.com/vikasSainii"),
    SizedBox(width: 10,),

    URLButton(imagePath: "assets/images/instagram.png", text: "Instagram", URL: "https://www.instagram.com/vikasdeepsinghsaini/"),



  ],
),

          Column(
            children: [
              SizedBox(height: screenSize.height / 5),

              SizedBox(width: 10,),
              URLButton(imagePath: "assets/images/youtube.png", text: "Youtube", URL: "https://www.youtube.com/channel/UCT4QSW9dMPzN5cxdv6dcNKw"),
              SizedBox(width: 10,),
              URLButton(imagePath: "assets/images/youtube.png", text: "Upwork", URL: "https://www.youtube.com/channel/UCT4QSW9dMPzN5cxdv6dcNKw"),
              SizedBox(width: 10,),
              URLButton(imagePath: "assets/images/github.png", text: "Github", URL: "https://github.com/vikassaini075")
            ],
          )









              ],
            )
          : Column(

        mainAxisAlignment: MainAxisAlignment.end,
crossAxisAlignment: CrossAxisAlignment.end,
        children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [


                    URLButton(imagePath: "assets/images/linkedin.png", text: "LinkedIn", URL: "https://www.linkedin.com/in/vikasdeep-singh-saini-2575b9231/"),
                    SizedBox(width: 10,),

                    URLButton(imagePath: "assets/images/twitter.png", text: "Twitter", URL: "https://twitter.com/vikasSainii"),
                    SizedBox(width: 10,),

                    URLButton(imagePath: "assets/images/instagram.png", text: "Instagram", URL: "https://www.instagram.com/vikasdeepsinghsaini/"),
                    SizedBox(width: 10,),

                    URLButton(imagePath: "assets/images/youtube.png", text: "Youtube", URL: "https://www.youtube.com/channel/UCT4QSW9dMPzN5cxdv6dcNKw"),

                    SizedBox(width: 10,),
                    URLButton(imagePath: "assets/images/upwork.png", text: "Upwork", URL: "https://www.youtube.com/channel/UCT4QSW9dMPzN5cxdv6dcNKw"),
                    SizedBox(width: 10,),
                    URLButton(imagePath: "assets/images/github.png", text: "Github", URL: "https://github.com/vikassaini075")
                  ],
                ),

          /*   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blueGrey,
                    width: double.maxFinite,
                    height: 1,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2022 | vlyra.com.com',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
                */


              ],
            ),
    );
  }
}
