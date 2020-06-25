import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_picture;
  final product_detail_description;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_price,
    this.product_detail_picture,
    this.product_detail_description,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
          child: Text('La Strada'),
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
      body: new ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white60,
                child: Image.asset(
                  widget.product_detail_picture,
                  fit: BoxFit.cover,
                ),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                    ),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "MKD ${widget.product_detail_price}",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //================buttons with dropdown=============
          Row(
            children: <Widget>[
//===================size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose your size: "),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
//================Quantity Button=======================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Please choose quantity: "),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Quantity")),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now"),
                ),
              ),
              new IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {},
                color: Colors.red,
              ),
              new IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
                color: Colors.red,
              )
            ],
          ),
          Divider(),
          //=========== Item Description==========================
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: new Text(widget.product_detail_description),
                  padding: EdgeInsets.all(10.0),
                ),
              )
            ],
          ),
          Divider(),
          new Text(
            "Similar Products",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
//============Similar Products Section==================
          Container(
            height: 480.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Pizza Ruccola",
      "picture": "images/products/pizza2.jpg",
      "price": 299,
      "description":
          "Stone oven baked artisan pizza, made with homemade dough. Topped with arugula, serano ham, basil and mozzarella cheese. Made with handmade tomato sauce with handpicked tomatoes, basil, garlic."
    },
    {
      "name": "Stone Oven Pizza",
      "picture": "images/products/pizza1.jpg",
      "price": 50,
      "description":
          "Stone oven baked artisan pizza, made with homemade dough. Topped with arugula, serano ham, basil and mozzarella cheese. Made with handmade tomato sauce with handpicked tomatoes, basil, garlic."
    },
    {
      "name": "Red Sauce",
      "picture": "images/products/pizza1.jpg",
      "price": 50,
      "description":
          "Stone oven baked artisan pizza, made with homemade dough. Topped with arugula, serano ham, basil and mozzarella cheese. Made with handmade tomato sauce with handpicked tomatoes, basil, garlic."
    },
    {
      "name": "Sausage Pasta",
      "picture": "images/products/pasta.jpg",
      "price": 50,
      "description":
          "Stone oven baked artisan pizza, made with homemade dough. Topped with arugula, serano ham, basil and mozzarella cheese. Made with handmade tomato sauce with handpicked tomatoes, basil, garlic."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_price: product_list[index]['price'],
              prod_description: product_list[index]['description']);
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_description;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_description,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_price: prod_price,
                      product_detail_picture: prod_picture,
                      product_detail_description: prod_description,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white60,
                height: 50.0,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "MKD $prod_price",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              child: new Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
