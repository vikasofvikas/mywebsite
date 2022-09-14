import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'TextWithGoogleFont.dart';

class aboutMe extends StatefulWidget {


  @override
  _projectDialogState createState() => _projectDialogState();
}
class _projectDialogState extends State<aboutMe> {


  @override
  Widget build(BuildContext context) {
    return

      Dialog(
        insetAnimationDuration: Duration(seconds: 15),
        //     insetAnimationCurve: Curves.easeInOut,
        backgroundColor: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child:
        Container(
          width: 450,
          // height: 650,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
               /*       ClipRRect(
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(7), topRight:Radius.circular(7), ),
                          child: Image.asset(widget.gifLinkString, fit: BoxFit.cover,)),

*/
//                        child: Image.network(categories[2].gifLink, fit: BoxFit.cover,)),
                      const SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: Row(
                            children:  [
                              projectDescriptionWithGoogleFont(text: 'About me'),
                              SizedBox(width: 10,),

                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: projectDescriptionWithGoogleFont(text: "Hey, My name is vikasdeep singh saini. I love developing things that can help the end users. I also love to write articles. Writing is a way for me to have long conversations with myself. Contact me if you have any interesting ideas that you want to share. "),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: new Icon(Icons.arrow_back),
                  iconSize: 30,
                  color: Colors.deepOrangeAccent,
                  highlightColor: Colors.grey,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 12,),
              ],
            ),
          ),
        ),




      );

  }
}