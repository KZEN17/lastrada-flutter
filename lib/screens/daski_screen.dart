import 'package:flutter/material.dart';
import 'package:flutterapp/components/daski_products.dart';

class DaskiScreen extends StatefulWidget {
  @override
  _DaskiScreenState createState() => _DaskiScreenState();
}

class _DaskiScreenState extends State<DaskiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text('Daski'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: DaskiProducts(),
          ),
        ],
      ),
    );
  }
}
