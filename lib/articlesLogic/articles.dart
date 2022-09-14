import 'package:flutter/material.dart';

import 'package:mywebsite/articlesLogic/gridCards.dart';


class articlesScreen extends StatelessWidget {
  const articlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              child: const Text('Grid Card Test'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardGridScreen()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}