import 'dart:ui';

import 'package:flutter_decorator/utils/output_text.dart';

class NormalText implements OutputText {
  @override
  Color getColor() {
    return const Color(0xFF000000);
  }

  @override
  double getFontSize() {
    return 20;
  }

  @override
  String getText() {
    return '文字';
  }
}