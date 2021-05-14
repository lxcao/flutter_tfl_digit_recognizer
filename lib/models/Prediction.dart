/*
 * @Author: clingxin
 * @Date: 2021-05-14 13:39:24
 * @LastEditors: clingxin
 * @LastEditTime: 2021-05-14 13:39:24
 * @FilePath: /flutter_tfl_digit_recognizer/lib/models/Prediction.dart
 */
class Prediction {
  final double confidence;
  final int index;
  final String label;

  Prediction({this.confidence, this.index, this.label});

  factory Prediction.fromJson(Map<dynamic, dynamic> json) {
    return Prediction(
      confidence: json['confidence'],
      index: json['index'],
      label: json['label'],
    );
  }
}
