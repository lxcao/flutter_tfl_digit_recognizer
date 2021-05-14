<!--
 * @Author: clingxin
 * @Date: 2021-05-14 07:59:40
 * @LastEditors: clingxin
 * @LastEditTime: 2021-05-14 08:40:45
 * @FilePath: /flutter_tfl_digit_recognizer/README.md
-->
# flutter_tfl_digit_recognizer

A flutter project which recognize the digit by using tf lite package.

## Getting Started

A few resource and prerequisites to run the project:

- [mnist tflite models](https://github.com/PuzzleLeaf/flutter_tensorflow_lite_digit_recognizer/tree/master/assets)
- [tflite package setting for IOS and Android](https://pub.dev/packages/tflite)
- [IOS Xcode Build error workaround](https://github.com/shaqian/flutter_tflite/issues/139#issuecomment-668252599)

A few setup before run the project on IOS:

- rm -fr ios
- flutter clean .
- flutter create -i objc .
- downgrade tensorflowliteC in /ios/Podfile.lock to 2.2.0
- pod install
