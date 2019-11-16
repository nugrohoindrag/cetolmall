import 'package:flutter/material.dart';

//my import
import 'package:cetolmall/components/products.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "XL",
      "color": "Mejikuhibiniu",
      "quantity": 1,
    },
    {
      "name": "Pants Denim Murah",
      "picture": "images/products/pants2.jpeg",
      "price": 100,
      "size": "L",
      "color": "Merah",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_color,
    this.cart_prod_size,
    this.cart_prod_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //leading for image asset product of cart images
        leading: new Image.asset(cart_prod_picture, width: 80.0, height: 80.0,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            //ROW INSIDE
            new Row(
              children: <Widget>[
                //padding size product on cart.dart
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                // script for new padding color of cart product
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

            // SCRIPT FOR PRICE OF CART PRODUCT OUTPUT
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      trailing:
            FittedBox(
              fit: BoxFit.fill,
              child: Column(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_drop_up,),iconSize: 38, onPressed: (){},),
                  new Text("${cart_prod_qty}", style: TextStyle(fontSize: 17),),
                  IconButton(icon: Icon(Icons.arrow_drop_down,),iconSize: 38, onPressed: (){},),
                ],
              ),
      ),
      ),
    );
  }
}
