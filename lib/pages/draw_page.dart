/*
 * @Author: clingxin
 * @Date: 2021-05-14 09:20:36
 * @LastEditors: clingxin
 * @LastEditTime: 2021-05-14 09:50:00
 * @FilePath: /flutter_tfl_digit_recognizer/lib/pages/draw_page.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_tfl_digit_recognizer/services/recognizer.dart';

class DrawPage extends StatefulWidget {
  @override
  _DrawPageState createState() => _DrawPageState();
}

class _DrawPageState extends State<DrawPage> {
  final _recognizer = Recognizer();

  @override
  void initState() {
    super.initState();
    _initModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digit Recognizer'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'MNIST database of handwritten digits',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'the digits have been size-normalized and centered in a fixed-size images (28 x 28)',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.clear),
        onPressed: () {},
      ),
    );
  }

  void _initModel() async {
    var res = await _recognizer.loadModel();
    print(res);
  }
}
