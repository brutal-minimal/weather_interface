import 'package:flutter/material.dart';
import 'package:weather_interface/body_light.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: Typography.whiteHelsinki,
      primaryColor: const Color.fromARGB(255, 215, 43, 0) ),
      debugShowCheckedModeBanner: false,
      //home: const MyMoroccanWeatherScaffold(),
      home: const MyLightWeatherScaffold(),
    );
  }
}

