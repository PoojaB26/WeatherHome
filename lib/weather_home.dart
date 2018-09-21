import 'package:flutter/material.dart';

class WeatherHome extends StatelessWidget{

  //first part; city details
  final _cityDetails = Center(
    child: new Container(
      child: Column(
        children: <Widget>[
          Text("New York",
            style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,
                fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10.0,),
          Text("Today",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(height: 6.0,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Noon",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300
                  ),
                ),
                Icon(Icons.keyboard_arrow_down,
                  color: Colors.white,
                size: 18.0,)
              ],
            ),
          ),
        ],
      ),
    ),
  );

  //second part; temperature details
  final _tempDetails = new Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.wb_sunny,
          size: 74.0,
          color: Colors.white,
        ),
        SizedBox(width: 20.0,),
        Column(
          children: <Widget>[
            Text("84°C",
                style: TextStyle(
                  fontSize: 54.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w200
                ),
            ),
            Text("Mostly Sunny",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w300
              ),
            )
          ],
        )
      ],
    ),
  );

  //utility function to lay UI for each item on part three
  static getItem(IconData iconData, int value, String measure){
    return new Column(
      children: <Widget>[
        Icon(iconData, color: Colors.white, size: 28.0,),
        SizedBox(height: 4.0,),
        Text('$value', style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontWeight: FontWeight.w300
          ),
        ),
        Text('$measure',
          style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              fontWeight: FontWeight.w300
          ),
        )
      ],
    );
  }

  //part three; container for extra weather details
  final _extraDetails = new Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          getItem(Icons.ac_unit, 5, "km/hr"),
          getItem(Icons.ac_unit, 3, "%"),
          getItem(Icons.ac_unit, 20, "%"),
        ],
      ),
  );


  //Weather details container widget
  _weatherData(){
    return Center(
      child: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _cityDetails,
          _tempDetails,
          _extraDetails,
        ],
      ),
    );
  }





  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
      ),
      body: _weatherData(),
      drawer: Drawer(

      ),
    );
  }

}