import 'dart:ui';

import 'package:flutter_decorator/utils/decorator.dart';
import 'package:flutter_decorator/utils/output_text.dart';

class RedText extends Decorator {

  RedText(OutputText outputText) : super(outputText);

  @override
  Color getColor() {
    return const Color(0xFFC62828);
  }

  @override
  double getFontSize() {
    return outputText.getFontSize();
  }

  @override
  String getText() {
    final text = outputText.getText();
    return '赤い$text';
  }
}