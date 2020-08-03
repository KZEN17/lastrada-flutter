import 'package:flutter/material.dart';
import 'package:flutterapp/components/main_products.dart';

class MainsScreen extends StatefulWidget {
  @override
  _MainsScreenState createState() => _MainsScreenState();
}

class _MainsScreenState extends State<MainsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text('Mains'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: MainProducts(),
          ),
        ],
      ),
    );
  }
}
