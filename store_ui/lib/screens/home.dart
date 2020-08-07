import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.show_chart),
            label: Text('Analytics'),
          ),
        ],
      ),
    ));
  }
}
