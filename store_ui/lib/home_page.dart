import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Task, String>> _pieSeries;
  _generateData() {
    var pieData = [
      new Task('T-shirts', 23.0, Colors.amberAccent[700]),
      new Task('Trousers', 12.0, Colors.teal[800]),
      new Task('TV-sets', 55.0, Colors.green[200]),
      new Task('Jeans', 43.0, Colors.blue[700]),
      new Task('Shoes', 33.0, Colors.purple[300]),
      new Task('Bags', 6.0, Colors.grey),
    ];

    _pieSeries.add(charts.Series(
      data: pieData,
      domainFn: (Task task, _) => task.task,
      measureFn: (Task task, _) => task.taskvalue,
      colorFn: (Task, task, _) => charts.ColorUtil.fromDartColor(task.colorval),
      id: 'Monthly Sales',
      labelAccessorFn: (Task row, _) => '${row.taskvalue}',
    ));
  }

  @override
  void initState() {
    super.initState();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          bottom: TabBar(
            indicatorColor: Colors.deepPurple[600],
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.menu)),
              Tab(icon: Icon(Icons.shopping_basket))
            ],
          ),
          title: Text('Awesome Store'),
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
                        'Stock Inventory',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Expanded(
                        child: charts.PieChart(_pieSeries,
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
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// Datasets
class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
