import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mywebsite/articlesLogic/navigateToWidget.dart';

import '../widgets/responsive.dart';


class articleJSON extends StatefulWidget {
  const articleJSON({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<articleJSON > with SingleTickerProviderStateMixin {

  late final TabController _tabController;

  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/json/articleFile.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

 /* appBar: AppBar(
  backgroundColor: Colors.white,
  iconTheme: const IconThemeData(
  color: Colors.deepOrange, // <-- SEE HERE
  ),
  centerTitle: true,
  title: const Text(
  'Articles',
  style: TextStyle(color: Colors.deepOrange,
  fontFamily: 'Montserrat',),
  ),
  ),
  */
  @override
  void initState() {
    super.initState();
    readJson();

    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              centerTitle: true,

              backgroundColor: Theme.of(context).backgroundColor,
              iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),
            title: const Text(
              'Articles',
              style: TextStyle(color: Colors.deepOrange,
                fontFamily: 'Montserrat',),),

              pinned: false,
              floating: true,
              // forceElevated: innerBoxIsScrolled,

            ),
          ];
        },
        body: Padding(
          padding: EdgeInsets.only(
              left: ResponsiveWidget.isSmallScreen(context)? 10.0 :150,
              right: ResponsiveWidget.isSmallScreen(context)? 10.0 :150,
            //  bottom: ResponsiveWidget.isSmallScreen(context)? 130.0 :130,
          ),
          child: Column(
            children: [
             Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),

                  itemCount: _items.length,
                  itemBuilder: (context, index) {

                    return
                    Padding(
                      padding:  EdgeInsets.only(
                          left: ResponsiveWidget.isSmallScreen(context)? 20.0 :150,
                          right: ResponsiveWidget.isSmallScreen(context)? 20.0 :150,
                          top: 20,
                      bottom: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  navigateToWidget( _items[index]["widget"].toString())),
                          );
                        },
                        child: Container(

                            decoration: BoxDecoration(
                              border: Border(
                              left: BorderSide( //                   <--- right side
                                color: Colors.deepOrange,
                                width: 3.0,
                              ),
                            ),

                              color: Theme.of(context).backgroundColor,

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),


                                        Padding(

                                          padding:  EdgeInsets.only(
                                              left: ResponsiveWidget.isSmallScreen(context)? 15.0 :15,
                                             ),
                                          child: AutoSizeText(
                                      _items[index]["title"],

                                            minFontSize: ResponsiveWidget.isSmallScreen(context)?15:20,
                                            maxFontSize:  ResponsiveWidget.isSmallScreen(context)?15:20,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            // textAlign: TextAlign.left,
                                            style: TextStyle(


                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .primaryTextTheme
                                                  .subtitle1!
                                                  .color,
                                            ),
                                          ),
                                        ),
                                SizedBox(height: 5,),


                                Divider(
                                  //  indent: ResponsiveWidget.isSmallScreen(context)?40:200,
                                  // endIndent: ResponsiveWidget.isSmallScreen(context)?40:200,
                                  thickness: 0.5,
                                  color: Colors.grey,
                                ),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                  SizedBox(width: 15,),
                                  AutoSizeText(_items[index]["date"],
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    minFontSize: 15,
                                    maxFontSize: 15,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      //  fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    ),),

                                  SizedBox(width: 5,),
                                    Text("|",style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.grey),),
                                    SizedBox(width: 5,),

                                    AutoSizeText(_items[index]["tag"],
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    minFontSize: 15,
                                    maxFontSize: 15,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      //  fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),),

                                ],),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0,right: 15,top: 8,bottom: 8),
                                  child: AutoSizeText(_items[index]["description"],
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    minFontSize: 15,
                                    maxFontSize: 15,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      //  fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .primaryTextTheme
                                          .subtitle1!
                                          .color,
                                    ),),
                                ),

                              ],
                            )
                        ),
                      ),
                    );







                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}