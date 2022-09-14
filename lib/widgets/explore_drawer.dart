import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:mywebsite/articlesLogic/articleJSON.dart';
import 'package:mywebsite/articlesLogic/articles.dart';
import 'package:mywebsite/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:mywebsite/widgets/aboutme.dart';


class mywebsiteDrawer extends StatefulWidget {
  const mywebsiteDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _mywebsiteDrawerState createState() => _mywebsiteDrawerState();
}

class _mywebsiteDrawerState extends State<mywebsiteDrawer> {
  bool _isProcessing = false;
  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: Colors.deepOrange,
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

    /*          InkWell(
                onTap: () {},
                child: Text(
                  'Discover',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
*/
           /*   InkWell(
                onTap: () {},
                child: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
*/
              InkWell(
                onTap: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => articleJSON()),
                );
                },
                child: Text(
                  'Articles',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {

                  showDialog(
                    context: context,
                    builder: (context) =>aboutMe(),
                  );

                },
                child: Text(
                  'About me',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),

            /*  InkWell(
                onTap: () {},
                child: Text(
                  'Stories',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
*/

              InkWell(
                onTap: () { EasyDynamicTheme.of(context).changeTheme();},
                child: Row(
                  children: [
                    Text(
                      'Change mode',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),

                    IconButton(
                      icon: Icon(Icons.brightness_6),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        EasyDynamicTheme.of(context).changeTheme();
                      },
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
