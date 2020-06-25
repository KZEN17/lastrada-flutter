import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Sausage Pasta",
      "picture": "images/products/pasta.jpg",
      "price": 150,
      "size": "Family",
      "quantity": 1,
    },
    {
      "name": "Arugula Salad",
      "picture": "images/products/salad.jpg",
      "price": 250,
      "size": "Large",
      "quantity": 1,
    },
    {
      "name": "Pasta Sausage ",
      "picture": "images/products/pasta.jpg",
      "price": 200,
      "size": "Regular",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]['name'],
          cart_prod_picture: Products_on_the_cart[index]['picture'],
          cart_prod_price: Products_on_the_cart[index]['price'],
          cart_prod_size: Products_on_the_cart[index]['size'],
          cart_prod_qty: Products_on_the_cart[index]['quantity'],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_qty,
      });

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
//================THIS IS THE SIZE SECTION===============
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: new Text(
                    "Size: ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
//                Padding(
//                  padding: EdgeInsets.all(0.0),
//                  child: Column(
//                    children: <Widget>[
//                      new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: null),
//                      new Text("$cart_prod_qty"),
//                      new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: null),
//                    ],
//                  ),
//                ),
              ],
            ),
            new Container(
              alignment: Alignment.topRight,
              child: new Text(
                "MKD $cart_prod_price",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
