import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:mywebsite/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'screens/home_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    EasyDynamicThemeWidget(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vikasdeep singh saini',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      debugShowCheckedModeBanner: false,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: HomePage(),
    );
  }
}
