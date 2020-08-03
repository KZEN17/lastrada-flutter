import 'package:flutter/material.dart';
import 'package:flutterapp/components/dessert_products.dart';

class DessertsScreen extends StatefulWidget {
  @override
  _DessertsScreenState createState() => _DessertsScreenState();
}

class _DessertsScreenState extends State<DessertsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text('Desserts'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: DessertProducts(),
          ),
        ],
      ),
    );
  }
}
