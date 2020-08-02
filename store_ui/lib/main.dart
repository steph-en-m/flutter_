import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: const Color(0xFF02BB9F),
      primaryColorDark: const Color(0xFF167F67),
      accentColor: const Color(0xFF167F67),
    ),
    home: DropdownScreen(),
  ));
}

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
          backgroundColor: Colors.green[900],
          title: Center(
              child: Text(
            'My Store',
            style: TextStyle(color: Colors.white),
          )),
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

                  DropdownButton<Item>(
                    hint: Text("Menu",
                        style: TextStyle(color: Colors.deepPurple[500])),
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
