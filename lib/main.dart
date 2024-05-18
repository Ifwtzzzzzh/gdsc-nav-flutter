import 'package:flutter/material.dart';
import 'package:navigation_starter/first_screen.dart';
import 'package:navigation_starter/return_data_screen.dart';
import 'package:navigation_starter/second_screen.dart';
import 'package:navigation_starter/second_screen_with_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC Navigation & Routing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/secondScreen': (context) => const SecondScreen(),
        '/secondScreenWithData': (context) => SecondScreenWithData(
            ModalRoute.of(context)!.settings.arguments as String),
        '/returnDataScreen': (context) => const ReturnDataScreen(),
      },
    );
  }
}
