import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Sales {
  final String year;
  final int sales;

  Sales(this.year, this.sales);
}

final List<Sales> desktopSalesData = [
  Sales('2015', 100),
  Sales('2016', 200),
  Sales('2017', 150),
  Sales('2018', 300),
  Sales('2019', 400),
  // Add more data points as needed
];

final List<Sales> tabletSalesData = [
  Sales('2015', 150),
  Sales('2016', 120),
  Sales('2017', 250),
  Sales('2018', 180),
  Sales('2019', 300),
  // Add more data points as needed
];

final List<Sales> mobileSalesData = [
  Sales('2015', 80),
  Sales('2016', 180),
  Sales('2017', 100),
  Sales('2018', 280),
  Sales('2019', 350),
  // Add more data points as needed
];

class BarChartWidget extends StatelessWidget {
  List<charts.Series<Sales, String>> _createChartSeries() {
    return [
      charts.Series<Sales, String>(
        id: 'Desktop Sales',
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        data: desktopSalesData,
        fillColorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      ),
      charts.Series<Sales, String>(
        id: 'Tablet Sales',
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        data: tabletSalesData,
        fillColorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
      charts.Series<Sales, String>(
        id: 'Mobile Sales',
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        data: mobileSalesData,
        fillColorFn: (_, __) => charts.MaterialPalette.teal.shadeDefault,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Educative Bar Chart Answer')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: charts.BarChart(
            _createChartSeries(),
            animate: true,
            vertical: false,
            barGroupingType: charts.BarGroupingType.grouped,
            defaultRenderer: charts.BarRendererConfig(
              groupingType: charts.BarGroupingType.grouped,
              strokeWidthPx: 1.0,
            ),
            domainAxis: charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
          ),
        ),
      ),
    );
  }
}