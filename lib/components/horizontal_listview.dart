import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
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
          ),

          Category(
            image_location: 'images/cats/main.png',
            image_caption: 'Main',
          ),

          Category(
            image_location: 'images/cats/starters.png',
            image_caption: 'Starters',
          ),

          Category(
            image_location: 'images/cats/pasta.png',
            image_caption: 'Pasta',
          ),

          Category(
            image_location: 'images/cats/burger.png',
            image_caption: 'Burgers',
          ),
          Category(
            image_location: 'images/cats/risotto.png',
            image_caption: 'Risotto',
          ),
          Category(
            image_location: 'images/cats/salad.png',
            image_caption: 'Salads',
          ),
          Category(
            image_location: 'images/cats/daski.png',
            image_caption: 'Daski',
          ),
          Category(
            image_location: 'images/cats/cake.png',
            image_caption: 'Dessert',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
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
                child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
              )
          ),
        ),
      ),
    );
  }
}