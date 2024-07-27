import 'package:flutter/material.dart';
import 'package:flutter_lec1/friuts_app/splash_screen/screens/splash_screen.dart';
import 'package:flutter_lec1/old_lecs/form_task/screens/form_screen.dart';
import 'old_lecs/poor_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruits App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFA451)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
