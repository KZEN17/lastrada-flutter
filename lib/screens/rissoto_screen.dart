import 'package:flutter/material.dart';
import 'package:flutterapp/components/rissoto_products.dart';

class RissotoScreen extends StatefulWidget {
  @override
  _RissotoScreenState createState() => _RissotoScreenState();
}

class _RissotoScreenState extends State<RissotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text('Risotto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: RissotoProducts(),
          ),
        ],
      ),
    );
  }
}
