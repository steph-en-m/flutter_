import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ToDo(),
    ));

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('To-do list'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, //remove bar drop-shadow
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/dvm.jpg'),
                radius: 40.0,
              ),
            ),
// Add spacing between avatar and Task input area
            Divider(
              height: 40.0,
              color: Colors.grey[800],
            ),
            Text(
              'TASK',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            TextField(
                style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
            )),
          ],
        ),
      ),
    );
  }
}
