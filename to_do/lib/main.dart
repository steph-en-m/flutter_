import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ToDo(),
    ));

class ToDo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('To-do list'),
        centerTitle: true,
        backgroundColor: Colors.grey[840],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          children: <Widget>[],
        ),
      ),
    )
  }
}