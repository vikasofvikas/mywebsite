import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'TextWithGoogleFont.dart';

class projectDialogue extends StatefulWidget {
  late final String gifLinkString;
  late final double downloadCountBegin;
  late final double downloadCountEnd;
  late final String projectDescription;

  projectDialogue({
    required this.gifLinkString,
    required this.downloadCountBegin,
    required this.downloadCountEnd,
    required this.projectDescription,
  });

  @override
  _projectDialogState createState() => _projectDialogState();
}
class _projectDialogState extends State<projectDialogue> {


  @override
  Widget build(BuildContext context) {
    return

      Dialog(
        backgroundColor: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child:
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(7), topRight:Radius.circular(7), ),
                        child: Image.network(widget.gifLinkString, fit: BoxFit.cover,)),
//                        child: Image.network(categories[2].gifLink, fit: BoxFit.cover,)),
                    const SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 202,
                        child: Row(
                          children: [
                            const projectDescriptionWithGoogleFont(text: 'Downloads:'),
                            SizedBox(width: 10,),
                            Countup(
                              begin: widget.downloadCountBegin,
                              end: widget.downloadCountEnd,
                              //  precision: 2,
                              duration: Duration(seconds: 2),
                              separator: ',',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            const Text('+',style:TextStyle(
                              fontSize: 18,
                            ) ,),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: Row(
                          children:  [
                            projectDescriptionWithGoogleFont(text: 'Get on:'),
                            SizedBox(width: 10,),

                            Container(
                              width: 100,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(image: AssetImage('assets/images/googlePlay.jpg')),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: projectDescriptionWithGoogleFont(text: widget.projectDescription),
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




      );

  }
}