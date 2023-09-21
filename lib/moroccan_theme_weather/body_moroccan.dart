import 'package:flutter/material.dart';
import 'package:weather_interface/variables.dart';
import 'extra_weather_data.dart';
import 'forecast.dart';

class MyMoroccanWeatherScaffold extends StatelessWidget {
  const MyMoroccanWeatherScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 215, 43, 0),
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Weather Forecast",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 215, 43, 0),
        ),
        body: _singleBody(),
      ),
    );
  }
}

Widget _singleBody() {
  
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
      _searchByCity(),
      const SizedBox(
        height: 30,
      ),
      const Text(
        location,
        style: textStyleBig,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        currentDate,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 10,
      ),
      _currentWeather(),
      extraWeatherDetail(),
      const SizedBox(
        height: 30,
      ),
      const Text(
        "7-DAY WEATHER FORECAST",
        style: textStyleSmall,
      ),
      const ForecastForDay(),
    ]),
  );
}

Row _searchByCity() {
  return const Row(
    children: [
      SizedBox(width: 15),
      Icon(
        Icons.search,
        color: Colors.white,
        size: 24,
      ),
      SizedBox(width: 15),
      Text(
        "Enter City Name",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
      ),
    ],
  );
}

Row _currentWeather() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(height: 30),
      iconOfTheSun(72.0),
      const SizedBox(width: 15),
      const Column(
        children: [
          SizedBox(height: 30),
          Text(
            "15ºF",
            style: TextStyle(fontSize: 56, fontWeight: FontWeight.w200),
            textAlign: TextAlign.center,
          ),
          Text(
            "LIGHT SNOW",
            style: textStyleSmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
        ],)
    ],);
    }
