import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//my own imports
import 'package:flutterapp/components/products.dart';
import 'package:flutterapp/components/horizontal_listview.dart';
import 'package:flutterapp/pages/cart.dart';
import 'package:flutterapp/pages/login_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/pasta.jpg'),
          AssetImage('images/pizza1.jpg'),
          AssetImage('images/salad.jpg'),
          AssetImage('images/pizza2.jpg'),
          AssetImage('images/Background.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.orange,
        title: Text('La Strada'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new Cart()),
                );
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//            header
            new UserAccountsDrawerHeader(
              accountName: Text('Vlatko Jovanoski'),
              accountEmail: Text('vlatkojovanoski@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.orange),
            ),

//            body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            ),
            Divider(),

            InkWell(
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                });
              },
              child: ListTile(
                title: Text('Log out'),
                leading: Icon(
                  Icons.transit_enterexit,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
//          image carousel begins here
          imageCarousel,
          // Divider(),
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(1.0),
            child: new Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
          ),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(1.0),
            child: new Text(
              'New Items',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
          ),

          //grid view
          Flexible(
            child: Products(),
          ),
        ],
      ),
    );
  }
}
