/*
 * @Author: clingxin
 * @Date: 2021-05-14 09:20:36
 * @LastEditors: clingxin
 * @LastEditTime: 2021-05-14 13:35:27
 * @FilePath: /flutter_tfl_digit_recognizer/lib/pages/draw_page.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_tfl_digit_recognizer/pages/drawing_painter.dart';
import 'package:flutter_tfl_digit_recognizer/services/recognizer.dart';
import 'package:flutter_tfl_digit_recognizer/utils/constants.dart';

class DrawPage extends StatefulWidget {
  @override
  _DrawPageState createState() => _DrawPageState();
}

class _DrawPageState extends State<DrawPage> {
  final _recognizer = Recognizer();
  final _points = List<Offset>();

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
          Container(
            width: Constants.canvasSize + Constants.borderSize * 2,
            height: Constants.canvasSize + Constants.borderSize * 2,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.black,
              width: Constants.borderSize,
            )),
            child: GestureDetector(
              onPanUpdate: (details) {
                Offset _localPosition = details.localPosition;
                if (_localPosition.dx >= 0 &&
                    _localPosition.dx <= Constants.canvasSize &&
                    _localPosition.dy >= 0 &&
                    _localPosition.dy <= Constants.canvasSize) {
                  setState(() {
                    _points.add(_localPosition);
                  });
                }
              },
              onPanEnd: (details) {
                _points.add(null);
                _recognize();
              },
              child: CustomPaint(
                painter: DrawingPainter(_points),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.clear),
        onPressed: () {
          setState(() {
            _points.clear();
          });
        },
      ),
    );
  }

  void _initModel() async {
    var res = await _recognizer.loadModel();
    print(res);
  }

  void _recognize() async {
    List<dynamic> pred = await _recognizer.recognize(_points);
    print(pred);
  }
}
