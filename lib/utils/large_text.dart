import 'dart:ui';

import 'package:flutter_decorator/utils/decorator.dart';
import 'package:flutter_decorator/utils/output_text.dart';

class LargeText extends Decorator {

  LargeText(OutputText outputText) : super(outputText);

  @override
  Color getColor() {
    return outputText.getColor();
  }

  @override
  double getFontSize() {
    final fontSize = outputText.getFontSize();
    return fontSize + 20;
  }

  @override
  String getText() {
    final text = outputText.getText();
    return '大きい$text';
  }
}