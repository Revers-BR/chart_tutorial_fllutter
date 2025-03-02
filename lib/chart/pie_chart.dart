import 'package:chart_tutorial/chart_data/pie_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartContent extends StatelessWidget {
  const PieChartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: getSectionData(MediaQuery.of(context).size.width),
        centerSpaceRadius: 0,
        sectionsSpace: 0,
      ),
    );
  }
}
