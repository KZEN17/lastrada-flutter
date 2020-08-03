import 'package:flutter/material.dart';
import 'package:flutterapp/pages/product_details.dart';

class PizzaProducts extends StatefulWidget {
  @override
  _PizzaProductsState createState() => _PizzaProductsState();
}

class _PizzaProductsState extends State<PizzaProducts> {
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
      "name": " African Peri",
      "picture": "images/african_peri_peri.png",
      "price": 50,
      "description":
          "Stone oven baked artisan pizza, made with homemade dough. Topped with arugula, serano ham, basil and mozzarella cheese. Made with handmade tomato sauce with handpicked tomatoes, basil, garlic."
    },
    {
      "name": " Aussie BBQ",
      "picture": "images/aussie_barbeque_veg.png",
      "price": 50,
      "description":
          "Stone oven baked artisan pizza, made with homemade dough. Topped with arugula, serano ham, basil and mozzarella cheese. Made with handmade tomato sauce with handpicked tomatoes, basil, garlic."
    },
    {
      "name": "Tandoori Paneer",
      "picture": "images/indi_tandoori_paneer.png",
      "price": 50,
      "description":
          "Stone oven baked artisan pizza, made with homemade dough. Topped with arugula, serano ham, basil and mozzarella cheese. Made with handmade tomato sauce with handpicked tomatoes, basil, garlic."
    },
    {
      "name": "Jamaican Jerk",
      "picture": "images/jamaican_jerk_veg.png",
      "price": 50,
      "description":
          "Stone oven baked artisan pizza, made with homemade dough. Topped with arugula, serano ham, basil and mozzarella cheese. Made with handmade tomato sauce with handpicked tomatoes, basil, garlic."
    },
    {
      "name": "Sweet And Tangy",
      "picture": "images/sweet_and_tangy.png",
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
          return Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_price: product_list[index]['price'],
              prod_description: product_list[index]['description']);
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_description;
  final prod_price;

  Single_prod({
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
