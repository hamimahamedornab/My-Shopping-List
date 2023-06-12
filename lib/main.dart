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
        padding: EdgeInsets.all(20.0),

        children: const [
          ListTile(
            leading: Icon(Icons.apple),
            textColor: Colors.black,
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
            iconColor: Colors.green,
            title: Text('Apple'),
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            textColor: Colors.black,
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
            iconColor: Colors.yellow,
            title: Text('Pizza'),
          ),
          ListTile(
            leading: Icon(Icons.rice_bowl),
            textColor: Colors.black,
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
            iconColor: Colors.blue,
            title: Text('Rice Bowl'),
          ),
          ListTile(
            leading: Icon(Icons.soup_kitchen),
            textColor: Colors.black,
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
            iconColor: Colors.redAccent,
            title: Text('Soup'),
          ),
          ListTile(
            leading: Icon(Icons.mobile_friendly),
            iconColor: Colors.pink,
            textColor: Colors.black,
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
            title: Text('Mobile',),

          ),
        ],
      ),
    );
  }
}
