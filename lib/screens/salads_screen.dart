import 'package:flutter/material.dart';
import 'package:flutterapp/components/salad_products.dart';

class SaladsScreen extends StatefulWidget {
  @override
  _SaladsScreenState createState() => _SaladsScreenState();
}

class _SaladsScreenState extends State<SaladsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text('Salads'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: SaladProducts(),
          ),
        ],
      ),
    );
  }
}
