import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:mywebsite/articlesLogic/cards.dart';

import 'package:mywebsite/articlesLogic/autorefresh.dart';
import 'package:mywebsite/articlesLogic/cards.dart';

import '../widgets/responsive.dart';
import '../widgets/top_bar_contents.dart';


class CardGridScreen extends StatefulWidget {
  CardGridScreen({Key? key}) : super(key: key);

  @override
  _CardGridScreenState createState() => _CardGridScreenState();
}

class _CardGridScreenState extends State<CardGridScreen> {
  @override
  Widget build(BuildContext context) {
    var columnCount =ResponsiveWidget.isSmallScreen(context)? 3:7;
    var screenSize = MediaQuery.of(context).size;

    return  Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
        backgroundColor:
        Theme.of(context).bottomAppBarColor.withOpacity(0.1),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),
           title: Text("V")
      )


          : PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: TopBarContents(0.1),
      ),

        body: SafeArea(
          child: AnimationLimiter(
            child: GridView.count(
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(25.0),
              crossAxisCount: columnCount,
              children: List.generate(
                50,
                    (int index) {
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: columnCount,
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: const ScaleAnimation(
                      scale: 0.5,
                      child: FadeInAnimation(
                        child: EmptyCard(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );

  }
}