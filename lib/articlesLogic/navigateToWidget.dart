import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mywebsite/articles/septToDec22/Aug1.dart';
import 'package:mywebsite/articles/septToDec22/Aug2.dart';
import 'package:mywebsite/articles/septToDec22/Aug20.dart';
import 'package:mywebsite/articles/septToDec22/Aug24.dart';
import 'package:mywebsite/articlesLogic/articleJSON.dart';


class navigateToWidget extends StatelessWidget {
  navigateToWidget(this.data);
  final String data;

  @override
  Widget build(BuildContext context) {
print(data.toString());
    return data=='one'? aug1()
       : data=='two'?aug3()
        : data=='three'?aug20()
        : data=='four'?aug24()



        : aug1();
  }
}