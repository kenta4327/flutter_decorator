import 'package:flutter/material.dart';
import 'package:flutter_decorator/utils/large_text.dart';
import 'package:flutter_decorator/utils/normal_text.dart';
import 'package:flutter_decorator/utils/output_text.dart';
import 'package:flutter_decorator/utils/red_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _textController = TextEditingController();
  String _outputText = '';
  double _outputFontSize = 10;
  Color _outputColor = const Color(0xFF000000);
  OutputText? _textNormal;
  OutputText? _textLarge;
  OutputText? _textRed;
  OutputText? _textLargeRed;

  @override
  void initState() {
    super.initState();

    _textNormal = NormalText();
    _textLarge = LargeText(_textNormal!);
    _textRed = RedText(_textNormal!);
    _textLargeRed = RedText(_textLarge!);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _outputNormal() {
    setState(() {
      _outputColor = _textNormal!.getColor();
      _outputFontSize = _textNormal!.getFontSize();
      _outputText = _textNormal!.getText();
    });
  }

  void _outputLarge() {
    setState(() {
      _outputColor = _textLarge!.getColor();
      _outputFontSize = _textLarge!.getFontSize();
      _outputText = _textLarge!.getText();
    });
  }

  void _outputRed() {
    setState(() {
      _outputColor = _textRed!.getColor();
      _outputFontSize = _textRed!.getFontSize();
      _outputText = _textRed!.getText();
    });
  }

  void _outputLargeRed() {
    setState(() {
      _outputColor = _textLargeRed!.getColor();
      _outputFontSize = _textLargeRed!.getFontSize();
      _outputText = _textLargeRed!.getText();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _outputNormal,
                  child: Text('ノーマル'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _outputLarge,
                  child: Text('文字を大きく'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _outputRed,
                  child: Text('文字を赤く'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _outputLargeRed,
                  child: Text('両方'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              _outputText,
              style: TextStyle(
                fontSize: _outputFontSize,
                color: _outputColor,
              )
            ),
          ],
        ),
      ),
    );
  }
}