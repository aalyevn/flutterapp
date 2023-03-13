import 'package:flutter/material.dart';
import 'homepage.dart';


void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget{
  const FlutterTutorialApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

