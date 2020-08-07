import 'package:flutter/material.dart';
import 'package:store_ui/screens/home.dart';
import 'package:store_ui/screens/loading.dart';
import 'package:store_ui/screens/stats.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home', //testing-purposes
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/stats': (context) => Stats(),
    },
  ));
}

/*
class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class DropdownScreen extends StatefulWidget {
  State createState() => DropdownScreenState();
}

class DropdownScreenState extends State<DropdownScreen> {
  Item selectedMenu;
  List<Item> menu = <Item>[
    const Item('Menu', Icon(Icons.menu)),
    const Item('Items', Icon(Icons.shopping_basket)),
    const Item('Cart', Icon(Icons.shopping_cart)),
    const Item('Contact', Icon(Icons.email)),
    const Item('help', Icon(Icons.help)),
    Item('Checkout', Icon(Icons.credit_card)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Center(
              child: Text(
            'My Store',
            style: TextStyle(color: Colors.white),
          )),
          actions: <Widget>[
            DropdownButton<Item>(
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
                        width: 10,
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
        body: (Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                      obscureText: true,
                      cursorColor: Colors.blue[800],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search',
                          labelStyle: TextStyle(
                            color: Colors.deepPurple[600],
                            letterSpacing: 2.0,
                          ))),

                  SizedBox(
                    height: 18.0,
                  ),
                  //Card
                  TextField(
                      obscureText: false,
                      cursorColor: Colors.blue[800],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Card Number',
                          labelStyle: TextStyle(
                            color: Colors.deepPurple[600],
                            letterSpacing: 2.0,
                          ))),
                  TextField(
                      obscureText: false,
                      cursorColor: Colors.blue[800],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name on Card',
                          labelStyle: TextStyle(
                            color: Colors.deepPurple[600],
                            letterSpacing: 2.0,
                          ))),
                  TextField(
                      obscureText: true,
                      cursorColor: Colors.blue[800],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'CVV',
                          labelStyle: TextStyle(
                            color: Colors.deepPurple[600],
                            letterSpacing: 2.0,
                          ))),
                ]))),
      ),
    );
  }
}


/*
// This app is a stateful, it tracks the user's current choice.
class BasicAppBarSample extends StatefulWidget {
  @override
  _BasicAppBarSampleState createState() => _BasicAppBarSampleState();
}

class _BasicAppBarSampleState extends State<BasicAppBarSample> {
  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic AppBar'),
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(choices[0].icon),
              onPressed: () {
                _select(choices[0]);
              },
            ),
            // action button
            IconButton(
              icon: Icon(choices[1].icon),
              onPressed: () {
                _select(choices[1]);
              },
            ),
            // overflow menu
            PopupMenuButton<Choice>(
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices.skip(2).map((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ChoiceCard(choice: _selectedChoice),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(BasicAppBarSample());
}
*/
*/
