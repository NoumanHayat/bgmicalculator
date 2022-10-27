import 'package:bgmicalculator/Screen/mainBody.dart';
import 'package:flutter/material.dart';
import 'Screen/mainBody.dart';
import 'Screen/result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:'/',
      routes: {
        '/':(context)=>MyAppMainBody(),
        '/result':(context)=>ResultScreen(),
      },
    );
  }
}

