import 'package:chart_tutorial/chart/bar_chart.dart';
import 'package:chart_tutorial/chart/line_chart.dart';
import 'package:chart_tutorial/chart/pie_chart.dart';
import 'package:chart_tutorial/chart_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FL Chart Tutorial',
      home: MyHomePage(title: 'FL Chart Tutorial'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),

      body: Container(
        color: Color(0xfff0f0f0),
        child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ChartContainer(
                title: 'Line Chart',
                color: Color.fromRGBO(45, 108, 223, 1),
                chart: LineChartContent(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ChartContainer(
                title: 'Bar Chart',
                color: Color.fromRGBO(45, 108, 223, 1),
                chart: BarChartContent(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ChartContainer(
                title: 'Pie Chart',
                color: Color.fromRGBO(45, 108, 223, 1),
                chart: PieChartContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
