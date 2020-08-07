import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class Stats extends StatefulWidget {
  Stats({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  Item selectedMenu;
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  var data1 = [0.0, -2.0, 3.5, -2.0, 0.5, 0.7, 0.8, 1.0, 2.0, 3.0, 3.2];

  List<CircularStackEntry> circularData = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(700.0, Color(0xff4285F4), rankKey: 'Q1'),
        new CircularSegmentEntry(1000.0, Color(0xfff3af00), rankKey: 'Q2'),
        new CircularSegmentEntry(1800.0, Color(0xffec3337), rankKey: 'Q3'),
        new CircularSegmentEntry(1000.0, Color(0xff40b24b), rankKey: 'Q4'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ];

  List<Item> menu = <Item>[
    const Item('Menu', Icon(Icons.menu)),
    const Item('Items', Icon(Icons.shopping_basket)),
    const Item('Cart', Icon(Icons.shopping_cart)),
    const Item('Contact', Icon(Icons.email)),
    const Item('help', Icon(Icons.help)),
    Item('Checkout', Icon(Icons.credit_card)),
  ];

  Material myTextItems(String title, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 8.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Colors.green[100],
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material myCircularItems(String title, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 8.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Colors.green[100],
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: AnimatedCircularChart(
                      size: const Size(100.0, 100.0),
                      initialChartData: circularData,
                      chartType: CircularChartType.Pie,
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material mychart1Items(String title, String priceVal, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 8.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Colors.green[100],
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      priceVal,
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: new Sparkline(
                      data: data,
                      lineColor: Color(0xffff6101),
                      pointsMode: PointsMode.all,
                      pointSize: 8.0,
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material mychart2Items(String title, String priceVal, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 8.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Colors.green[100],
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      priceVal,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  )),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: new Sparkline(
                      data: data1,
                      fillMode: FillMode.below,
                      fillGradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.amber[800], Colors.amber[200]],
                      ),
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          DropdownButton<Item>(
            dropdownColor: Colors.lightGreenAccent[50],
            hint: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            value: selectedMenu,
            onChanged: (Item value) {
              setState(() {
                selectedMenu = value;
              });
            },
            items: menu.map((Item menu) {
              return DropdownMenuItem<Item>(
                value: menu,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    menu.icon,
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      menu.name,
                      style: TextStyle(color: Colors.deepPurple[500]),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
      body: Container(
        color: Colors.green[50],
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0, //8
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(5.0),
              child:
                  mychart1Items("Monthly Sales", "8.0M UGX", "+1.9% increment"),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: myCircularItems("Profits", "1.2M UGX"),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: myTextItems("Expenditure", "4M UGX"),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: myTextItems("Number of Customers", "34"),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: mychart2Items("Conversion", "1.2M", "+1.2% of target"),
            )),
          ],
          staggeredTiles: [
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(2, 250.0),
            StaggeredTile.extent(2, 120.0),
            StaggeredTile.extent(2, 120.0),
            StaggeredTile.extent(4, 250.0),
          ],
        ),
      ),
    );
  }
}
