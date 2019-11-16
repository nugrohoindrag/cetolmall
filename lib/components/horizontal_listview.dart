import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:collection';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_Location: 'images/cats/tshirt.png',
            image_Caption:  'Kaos',
          ),

          Category(
            image_Location: 'images/cats/shoe.png',
            image_Caption: 'Sepatu',
          ),

          Category(
            image_Location: 'images/cats/dress.png',
            image_Caption: 'Dress',
          ),

          Category(
            image_Location: 'images/cats/formal.png',
            image_Caption: 'Pakaian Formal',
          ),

          Category(
            image_Location: 'images/cats/informal.png',
            image_Caption: 'Jaket Dilan',
          ),

          Category(
            image_Location: 'images/cats/jeans.png',
            image_Caption: 'Celana',
          ),

          Category(
            image_Location: 'images/cats/aksesoris.png',
            image_Caption: 'Accessories',
          ),
        ],
      ),
    );


  }
}

class Category extends StatelessWidget {
  final String image_Location;
  final String image_Caption;

  Category({this.image_Location, this.image_Caption});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              image_Location,
              //width: 65.0,
              //height: 65.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_Caption, style: new TextStyle(fontSize: 9.0),),
            ),
          ),
        ),
      ),
    );
  }
}
