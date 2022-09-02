import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Weather'),
          centerTitle: true,
          backgroundColor: Colors.indigo[400],
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
          elevation: 0,
        ),
        backgroundColor: Colors.indigo[400],
        body: _homeBar(),
      ),
    );
  }
}

Column _homeBar() {
  String _searchWindow;
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      _textFieldSearchCity(),
      _cityDetail(),
      _temperatureDetail(),
      _extraWeatherDetails(),
      _textInformation(),
      _bottomDetails(),
    ],
  );
}

Widget _textFieldSearchCity() {
  bool _nuberInputIsValid = false;
  return TextField(
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      border: InputBorder.none,
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      labelStyle: TextStyle(color: Colors.white),
      labelText: 'Enter City Name',
      fillColor: Colors.white,
      hoverColor: Colors.white,
      focusColor: Colors.white,
    ),
    cursorColor: Colors.white,
  );
}

Widget _cityDetail() {
  return Container(
    // decoration: BoxDecoration(border: Border.all()),
    width: 300,
    height: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Moscow, RU',
          style: TextStyle(fontSize: 29, color: Colors.white),
        ),
        Text(
          'Friday, sep 20, 2022',
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    ),
  );
}

Widget _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10),
        child: Icon(
          Icons.wb_sunny,
          color: Colors.white,
          size: 70,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              '15°',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
          Text(
            'LIGHT SMOKE',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      )
    ],
  );
}

Widget _extraWeatherDetails() {
  return Padding(
    padding: const EdgeInsets.only(top: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text(
              'km/hr',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '3',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '20',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _textInformation() {
  return Padding(
    padding: const EdgeInsets.only(top: 60.0),
    child: Text(
      '7-DAY WEATHER FORECAST',
      style: TextStyle(color: Colors.white),
    ),
  );
}

Widget _bottomDetails() {
  return Expanded(
    child: ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 10, bottom: 60, left: 25, right: 25),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 105,
            color: Color.fromARGB(64, 255, 255, 255),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      child: Text('Friday',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '6° C',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 105,
            color: Color.fromARGB(64, 255, 255, 255),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      child: Text('Saturday',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '10° C',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 105,
            color: Color.fromARGB(64, 255, 255, 255),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      child: Text('Sunday',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '12° C',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 105,
            color: Color.fromARGB(64, 255, 255, 255),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      child: Text('Monday',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '15° C',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 105,
            color: Color.fromARGB(64, 255, 255, 255),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      child: Text('Tuesday',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '11° C',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 105,
            color: Color.fromARGB(64, 255, 255, 255),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      child: Text('Wednesday',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '8° C',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 105,
            color: Color.fromARGB(64, 255, 255, 255),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      child: Text('Thursday',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '4° C',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
