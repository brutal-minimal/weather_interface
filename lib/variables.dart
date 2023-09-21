import 'package:flutter/material.dart';

const textStyleBig = TextStyle(fontSize: 36, fontWeight: FontWeight.w300);
const textStyleSmall = TextStyle(fontSize: 20, fontWeight: FontWeight.w200);

Icon iconOfTheSun(sizey){
  //iconOfTheSun(this.sizey);
  
  return Icon(
      Icons.wb_sunny,
      color: Colors.white,
      size: sizey,
    );
    }

double? sizey;

const number= [
  "5",
  "3",
  "20",
];

const value = [
  "km/h",
  "%",
  "%",
];

const forecast = [
 "6ºF",
 "5ºF",
 "22ºF",
 "22ºF",
 "21ºF",
 "20ºF",
 "12ºF",
];

const String currentDate = "Friday, June 7, 2023";
const String location = "Baix Emporda, Girona, L'Estartit";

const weekDays = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
] ;

const pictureUrl= "https://www.hcpress.com/img/11824963_10152994857355843_233202858979292248_n.jpg";
const weatherText = "Air Quality Alerts and Fire Weather concerns will continue for the Great Lakes and Northeast through today. Meanwhile, the pattern for the west remains unsettled with more showers and thunderstorms and locally heavy rainfall continues through the middle of this week. Warming temperatures will climb above seasonable normal values for the Pacific Northwest and northern Plains through Thursday.";