import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> getSectionData(double screenWidth) {
  double radius = screenWidth / 3;

  return [
    PieChartSectionData(
      value: 20,
      title: '20%',
      color: Colors.red,
      radius: radius,
    ),
    PieChartSectionData(
      value: 35,
      title: '35%',
      color: Colors.green,
      radius: radius,
    ),
    PieChartSectionData(
      value: 15,
      title: '15%',
      color: Colors.white,
      radius: radius,
    ),
    PieChartSectionData(
      value: 30,
      title: '30%',
      color: Colors.amber,
      radius: radius,
    ),
  ];
}
