import 'package:PDetector/pieChart.dart';
import 'package:flutter/material.dart';
import 'package:PDetector/barchart.dart';

import "package:PDetector/pieChart.dart";

class Chart extends StatefulWidget {
  @override
  __ChartState createState() => __ChartState();
}

class __ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          child: Card(color: Colors.white, elevation: 8, child: BarGraphDemo()),
        ),
        Container(
          height: 300,
          child: Card(color: Colors.white, elevation: 8, child: PieChart()),
        ),
      ],
    );
  }
}
