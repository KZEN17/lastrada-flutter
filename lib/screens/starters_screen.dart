import 'package:flutter/material.dart';
import 'package:flutterapp/components/starter_products.dart';

class StartersScreen extends StatefulWidget {
  @override
  _StartersScreenState createState() => _StartersScreenState();
}

class _StartersScreenState extends State<StartersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text('Starters'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: StarterProducts(),
          ),
        ],
      ),
    );
  }
}
