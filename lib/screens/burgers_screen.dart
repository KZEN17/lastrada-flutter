import 'package:flutter/material.dart';
import 'package:flutterapp/components/burger_products.dart';

class BurgersScreen extends StatefulWidget {
  @override
  _BurgersScreenState createState() => _BurgersScreenState();
}

class _BurgersScreenState extends State<BurgersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text('Burgers'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: BurgerProducts(),
          ),
        ],
      ),
    );
  }
}
