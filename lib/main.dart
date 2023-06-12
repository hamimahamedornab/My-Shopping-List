import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingListPage(),
    );
  }
}

class ShoppingListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Cart is empty')),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.apple),
            title: Text('Apple'),
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text('Pizza'),
          ),
          ListTile(
            leading: Icon(Icons.rice_bowl),
            title: Text('Rice Bowl'),
          ),
          ListTile(
            leading: Icon(Icons.soup_kitchen),
            title: Text('Soup'),
          ),
          ListTile(
            leading: Icon(Icons.mobile_friendly),
            title: Text('Mobile'),
          ),
        ],
      ),
    );
  }
}
