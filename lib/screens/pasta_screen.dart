import 'package:flutter/material.dart';
import 'package:flutterapp/components/pasta_products.dart';

class PastaScreen extends StatefulWidget {
  @override
  _PastaScreenState createState() => _PastaScreenState();
}

class _PastaScreenState extends State<PastaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text('Pasta'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: PastaProducts(),
          ),
        ],
      ),
    );
  }
}
