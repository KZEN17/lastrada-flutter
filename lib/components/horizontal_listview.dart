import 'package:flutter/material.dart';
import 'package:flutterapp/screens/pizza_screen.dart';
import 'package:flutterapp/screens/mains.dart';
import 'package:flutterapp/screens/starters_screen.dart';
import 'package:flutterapp/screens/pasta_screen.dart';
import 'package:flutterapp/screens/burgers_screen.dart';
import 'package:flutterapp/screens/rissoto_screen.dart';
import 'package:flutterapp/screens/salads_screen.dart';
import 'package:flutterapp/screens/daski_screen.dart';
import 'package:flutterapp/screens/desserts_screen.dart';

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/pizza.png',
            image_caption: 'Pizza',
            screen_route: PizzaScreen(),
          ),
          Category(
            image_location: 'images/cats/main.png',
            image_caption: 'Main',
            screen_route: MainsScreen(),
          ),
          Category(
            image_location: 'images/cats/starters.png',
            image_caption: 'Starters',
            screen_route: StartersScreen(),
          ),
          Category(
            image_location: 'images/cats/pasta.png',
            image_caption: 'Pasta',
            screen_route: PastaScreen(),
          ),
          Category(
            image_location: 'images/cats/burger.png',
            image_caption: 'Burgers',
            screen_route: BurgersScreen(),
          ),
          Category(
            image_location: 'images/cats/risotto.png',
            image_caption: 'Risotto',
            screen_route: RissotoScreen(),
          ),
          Category(
            image_location: 'images/cats/salad.png',
            image_caption: 'Salads',
            screen_route: SaladsScreen(),
          ),
          Category(
            image_location: 'images/cats/daski.png',
            image_caption: 'Daski',
            screen_route: DaskiScreen(),
          ),
          Category(
            image_location: 'images/cats/cake.png',
            image_caption: 'Dessert',
            screen_route: DessertsScreen(),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  var screen_route;

  Category({this.image_location, this.image_caption, this.screen_route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen_route));
        },
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 60.0,
                height: 60.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
