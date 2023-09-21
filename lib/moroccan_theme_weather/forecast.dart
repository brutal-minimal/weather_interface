import 'package:flutter/material.dart';
import 'package:weather_interface/variables.dart';

class ForecastForDay extends StatelessWidget {
  const ForecastForDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView(
        padding: const EdgeInsets.all(8.0),
        itemExtent: 155,
        scrollDirection: Axis.horizontal,
        children: const [
          ForecastPane(0),
          ForecastPane(1),
          ForecastPane(2),
        ],),
    );}
}

class ForecastPane extends StatelessWidget{
  const ForecastPane(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(99, 255, 255, 255),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(weekDays[index], style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w200),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                    children: [
                      Text(forecast[index], style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w200),),
                      iconOfTheSun(36.0),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
    );
  }
}