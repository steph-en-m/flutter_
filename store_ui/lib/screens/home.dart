import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                    Tab(icon: Icon(FontAwesomeIcons.home)),
                    FlatButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      icon: Icon(Icons.show_chart, color: Colors.white70),
                      label: Text(
                        'Stats',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                ),
                title: Center(child: Text('The Awesome Store')),
              ),
              body: Column(
                children: <Widget>[],
              ),
            )));
  }
}
