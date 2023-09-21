import 'package:flutter/material.dart';

import '../variables.dart';

Row extraWeatherDetail() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ExtraWeatherData(0),
      ExtraWeatherData(1),
      ExtraWeatherData(2),
    ],
  );
}

class ExtraWeatherData extends StatelessWidget {
  const ExtraWeatherData(this.index, {
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.ac_unit,
          color: Colors.white,
          size: 36,
        ),
        Text(
          number[index],
          style: textStyleSmall,
        ),
        Text(value[index], style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 12),)
      ],
    );
  }
}
