/*
 * @Author: clingxin
 * @Date: 2021-05-14 07:59:40
 * @LastEditors: clingxin
 * @LastEditTime: 2021-05-14 09:43:12
 * @FilePath: /flutter_tfl_digit_recognizer/lib/main.dart
 */
import 'package:flutter/material.dart';

import 'pages/draw_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mnist Digit Recognizer',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.black,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.black,
          )),
      home: DrawPage(),
    );
  }
}
