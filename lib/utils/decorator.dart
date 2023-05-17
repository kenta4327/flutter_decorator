import 'package:flutter_decorator/utils/output_text.dart';

abstract class Decorator extends OutputText {
  OutputText outputText;

  Decorator(this.outputText);
}