import 'package:flutter/material.dart';
import 'package:flutterapp/components/cart_products.dart';
import 'package:flutterapp/main.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new HomePage()),
            );
          },
          child: Text('Cart'),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: new Row(
          children: <Widget>[
            Expanded(
              child: new MaterialButton(
                onPressed: () {},
                color: Colors.red,
                child: new Text(
                  "Checkout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: new Text("Total: "),
                subtitle: new Text("MKD "),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
