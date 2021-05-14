/*
 * @Author: clingxin
 * @Date: 2021-05-14 09:21:52
 * @LastEditors: clingxin
 * @LastEditTime: 2021-05-14 09:25:08
 * @FilePath: /flutter_tfl_digit_recognizer/lib/services/recognizer.dart
 */
import 'package:tflite/tflite.dart';

class Recognizer {
  Future loadModel() {
    Tflite.close();
    return Tflite.loadModel(
        model: "assets/mnist.tflite", labels: "assets/mnist.txt");
  }
}
