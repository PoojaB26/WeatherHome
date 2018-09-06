import 'package:flutter/material.dart';

class WeatherHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text("test"),
        backgroundColor: Colors.black54,
      ),
      drawer: Drawer(),
    );
  }

}