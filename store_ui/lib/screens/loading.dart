import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sales {
  String item;
  String month;
  int quantity;

  Sales(this.item, this.month, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Loading extends StatefulWidget {
  final Widget child;

  Loading({Key key, this.child}) : super(key: key);

  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  List<charts.Series<Sales, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {
    var data1 = [
      new Sales('April', 'Shoes', 30),
      new Sales('April', 'Electronics', 40),
      new Sales('April', 'Clothes', 10),
    ];
    var data2 = [
      new Sales('May', 'Shoes', 100),
      new Sales('May', 'Electronics', 150),
      new Sales('May', 'Clothes', 80),
    ];
    var data3 = [
      new Sales('July', 'Shoes', 200),
      new Sales('July', 'Electronics', 300),
      new Sales('July', 'Clothes', 180),
    ];

    var piedata = [
      new Task('T-shirts', 23.0, Colors.amberAccent[700]),
      new Task('Trousers', 12.0, Colors.red[800]),
      new Task('TV-sets', 55.0, Colors.green[800]),
      new Task('Jeans', 43.0, Colors.blue[700]),
      new Task('Men\'s Shoes', 33.0, Colors.purple[800]),
      new Task('Bags', 6.0, Colors.grey[800]),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Sales sales, _) => sales.item,
        measureFn: (Sales sales, _) => sales.quantity,
        id: 'April',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Sales sales, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Sales sales, _) => sales.item,
        measureFn: (Sales sales, _) => sales.quantity,
        id: 'May',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Sales sales, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Sales sales, _) => sales.item,
        measureFn: (Sales sales, _) => sales.quantity,
        id: 'July',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Sales sales, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Stock',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }

  @override
  // ignore: unused_element
  void initState() {
    super.initState();
    _seriesData = List<charts.Series<Sales, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.solidChartBar)),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
              ],
            ),
            title: Text('Store Sales Statistics'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Monthly Store Sales 2020',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Stock Inventory',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Expanded(
                          child: charts.PieChart(_seriesPieData,
                              animate: true,
                              animationDuration: Duration(seconds: 5),
                              behaviors: [
                                new charts.DatumLegend(
                                  outsideJustification:
                                      charts.OutsideJustification.endDrawArea,
                                  horizontalFirst: false,
                                  desiredMaxRows: 2,
                                  cellPadding: new EdgeInsets.only(
                                      right: 4.0, bottom: 4.0),
                                  entryTextStyle: charts.TextStyleSpec(
                                      color: charts
                                          .MaterialPalette.purple.shadeDefault,
                                      fontFamily: 'Georgia',
                                      fontSize: 11),
                                )
                              ],
                              defaultRenderer: new charts.ArcRendererConfig(
                                  arcWidth: 100,
                                  arcRendererDecorators: [
                                    new charts.ArcLabelDecorator(
                                        labelPosition:
                                            charts.ArcLabelPosition.inside)
                                  ])),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
