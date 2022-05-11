import 'package:codelab_4/pages/splash_page.dart';
import 'package:flutter/material.dart';
import './pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codelab 4',
      home: SplashPage(),
    );
  }
}
