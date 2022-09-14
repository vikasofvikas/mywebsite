
import 'package:flutter/material.dart';
import 'package:mywebsite/textOfWebsite/textOfProject.dart';
import 'package:mywebsite/widgets/TextWithGoogleFont.dart';
import 'package:countup/countup.dart';



class projectDialogue1 extends StatefulWidget {
  @override
  _projectDialogState createState() => _projectDialogState();
}
class _projectDialogState extends State<projectDialogue1> {
  @override
  Widget build(BuildContext context) {
    return Dialog(

      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SingleChildScrollView(
        child:Column(
          children:   [
             TextWithGoogleFontBold(text: categories[0].projectTitle),
          Container(
            child: Image.network(categories[0].gifLink, width: 255,height: 255,)
          ),
            projectDescriptionWithGoogleFont(text: categories[0].projectDescription),


                      ]
      ),
      )
        );

  }
}

class projectDialogue2 extends StatefulWidget {
  @override
  _projectDialogState2 createState() => _projectDialogState2();
}
class _projectDialogState2 extends State<projectDialogue2> {
  @override
  Widget build(BuildContext context) {
    return Dialog(

        backgroundColor: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SingleChildScrollView(
          child:Column(
              children:   [
                TextWithGoogleFont(text: categories[1].projectTitle),
                Container(
                    child: Image.network(categories[1].gifLink, width: 255,height: 255,)
                ),
                projectDescriptionWithGoogleFont(text: categories[1].projectDescription),
              ]
          ),
        )
    );

  }
}


class projectDialogue3 extends StatefulWidget {
  @override
  _projectDialogState3 createState() => _projectDialogState3();
}
class _projectDialogState3 extends State<projectDialogue3> {
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
                                      child: Image.network(categories[2].gifLink, fit: BoxFit.cover,)),

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
                                        begin: 10000,
                                        end: 30000,
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
                                child: projectDescriptionWithGoogleFont(text: categories[2].projectDescription),
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
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),



       
    );

  }
}


class projectDialogue4 extends StatefulWidget {
  @override
  _projectDialogState4 createState() => _projectDialogState4();
}
class _projectDialogState4 extends State<projectDialogue4> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SingleChildScrollView(
          child:Column(
              children:   [
                TextWithGoogleFont(text: categories[3].projectTitle),
                Container(
                    child: Image.network(categories[3].gifLink, width: 255,height: 255,)
                ),
                TextWithGoogleFont(text: categories[3].projectDescription),
              ]
          ),
        )
    );

  }
}

class projectDialogue5 extends StatefulWidget {
  @override
  _projectDialogState5 createState() => _projectDialogState5();
}
class _projectDialogState5 extends State<projectDialogue5> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SingleChildScrollView(
          child:Column(
              children:   [
                TextWithGoogleFont(text: categories[4].projectTitle),
                Container(
                    child: Image.network(categories[4].gifLink, width: 255,height: 255,)
                ),
                TextWithGoogleFont(text: categories[4].projectDescription),
              ]
          ),
        )
    );

  }
}

class projectDialogue6 extends StatefulWidget {
  @override
  _projectDialogState6 createState() => _projectDialogState6();
}
class _projectDialogState6 extends State<projectDialogue6> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SingleChildScrollView(
          child:Column(
              children:   [
                TextWithGoogleFont(text: categories[5].projectTitle),
                Container(
                    child: Image.network(categories[5].gifLink, width: 255,height: 255,)
                ),
                TextWithGoogleFont(text: categories[5].projectDescription),
              ]
          ),
        )
    );

  }
}