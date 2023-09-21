import 'package:flutter/material.dart';
import 'package:weather_interface/moroccan_theme_weather/body_moroccan.dart';
import 'package:weather_interface/variables.dart';


class MyLightWeatherScaffold extends StatelessWidget {
  const MyLightWeatherScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyMoroccanWeatherScaffold()));
          }, ),
      appBar: AppBar(
        title: const Text(
          "Weather",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        iconTheme: const IconThemeData(color: Colors.black87),
        actions:  [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            alignment: Alignment.centerRight,
          ),
        ],
      ),
      body: buildBody(),
      drawer: const Drawer(
        /*child: ElevatedButton(
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyMoroccanWeatherScaffold()));
          }, 
          child: Text("change theme")),*/
      ),
    );
  }
}


Widget buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _headerImage(),
        SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _weatherDescription(),
                  ],
                ))),
      ],
    ),
  );
}

Image _headerImage() {
  return const Image(image: NetworkImage(pictureUrl), fit: BoxFit.cover);
}

Column _weatherDescription() {
  return Column(
    children: [
      const Text(
        "Tuesday - May 28",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      const Divider(),
      const Text(
        weatherText,
        style: TextStyle(color: Colors.black54),
      ),
      const Divider(),
      _temperature(),
      const Divider(),
      _temperatureForecast(),
      const Divider(),
      _footerRatings(),
      const Divider(),
      
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(
        Icons.sunny,
        color: Colors.yellow,
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("15 C Clear", style: TextStyle(fontSize: 16, color: Colors.deepPurple[400],fontWeight: FontWeight.w600 ),),
          const Text(location, style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w600 ),),
        ],
      )
    ],
  );
}

Wrap _temperatureForecast(){
  return Wrap(
    spacing: 10,
    runSpacing: 10,
    children: 
      List.generate(7, (int index) {
        return Chip(
          label: Text("${index +17}ºC", style: const TextStyle(fontSize: 15),),
          avatar: Icon(Icons.cloud, color: Colors.blue[300],),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),elevation: 1, shadowColor: Colors.grey[300], backgroundColor: Colors.grey[100], side: const BorderSide(color:Colors.grey ),
          );
          })
    
  );
}


Row _footerRatings(){
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Info with openweathermap.com", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
    SizedBox(width: 20,),
    Icon(Icons.star_rate, size: 15, color: Colors.amber,),
    Icon(Icons.star_rate, size: 15, color: Colors.amber,),
    Icon(Icons.star_rate, size: 15, color: Colors.amber,),
    Icon(Icons.star_rate, size: 15,),
    Icon(Icons.star_rate, size: 15,),
  ],);
}