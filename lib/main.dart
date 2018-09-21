import 'package:flutter/material.dart';
import 'package:weather_app/weather_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Weather Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 20.0)
        )
      ),
      home: new WeatherHome(),
    );
  }
}

