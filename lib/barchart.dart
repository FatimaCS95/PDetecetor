import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:PDetector/data.dart';
import 'dart:math';

class BarGraphDemo extends StatefulWidget {
  BarGraphDemo({Key key}) : super(key: key);

  @override
  _BarGraphDemoState createState() => _BarGraphDemoState();
}

class _BarGraphDemoState extends State<BarGraphDemo> {
  List<AppDownloads> data;
  @override
  void initState() {
    super.initState();
    data = [
      AppDownloads(
        year: 'Jan',
        count: 178.1,
        barColor: charts.ColorUtil.fromDartColor(Colors.red),
      ),
      AppDownloads(
        year: 'Feb',
        count: 205.4,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue),
      ),
      AppDownloads(
        year: 'Mars',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.green),
      ),
      AppDownloads(
        year: 'Apr',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.pink),
      ),
      AppDownloads(
        year: 'May',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.pink),
      ),
      AppDownloads(
        year: 'Jun',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.pink),
      ),
      AppDownloads(
        year: 'Jul',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.pink),
      ),
      AppDownloads(
        year: 'Aug',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.pink),
      ),
      AppDownloads(
        year: 'Sep',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.pink),
      ),
      AppDownloads(
        year: 'Oct',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.pink),
      ),
      AppDownloads(
        year: 'Nov',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.pink),
      ),
      AppDownloads(
        year: 'Dec',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.pink),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            child: Card(
              child: MyBarChart(data),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Number of Mobile App Downloads in past 3 years (Data Source: Statista)',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppDownloads {
  final String year;
  final double count;
  final charts.Color barColor;

  AppDownloads({
    @required this.year,
    @required this.count,
    @required this.barColor,
  });
}

class MyBarChart extends StatelessWidget {
  final List<AppDownloads> data;

  MyBarChart(this.data);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<AppDownloads, String>> series = [
      charts.Series(
          id: 'AppDownloads',
          data: data,
          domainFn: (AppDownloads downloads, _) => downloads.year,
          measureFn: (AppDownloads downloads, _) => downloads.count,
          colorFn: (AppDownloads downloads, _) => downloads.barColor)
    ];

    return charts.BarChart(
      series,
      animate: true,
      barGroupingType: charts.BarGroupingType.groupedStacked,
    );
  }
}
