import 'package:flutter/material.dart';
import 'package:cetolmall/main.dart';

import 'home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_old_price;
  final product_detail_picture;
  final product_detail_new_price;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_old_price,
    this.product_detail_picture,
    this.product_detail_new_price
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
        backgroundColor: Colors.lightBlueAccent,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text("Cetol Mall")),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){})
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
            footer: new Container(
              color: Colors.white,
              child: ListTile(
                leading: new Text(
                  widget.product_detail_name,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                     child: new Text("\$${widget.product_detail_old_price}",
                     style: TextStyle(color: Colors.grey,
                         decoration: TextDecoration.lineThrough),)
                    ),

                    Expanded(
                      child: new Text("\$${widget.product_detail_new_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
                    ),

                  ],
                ),
              ),
            ),),
          ),
          // ===button===
          Row(
            children: <Widget>[
              //===size button===
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                     return new AlertDialog(
                        title: Text("Size"),
                        content: new Text("Choose the size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("Close"),)
                        ],
                     );
                   });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Colorr"),
                            content: new Text("Choose the Color"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Qty"),
                            content: new Text("Pick Your Qty"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),


              Row(
                children: <Widget>[
                  //===size button===
                  Expanded(
                      child: MaterialButton(
                          onPressed: (){},
                          color: Colors.red,
                          textColor: Colors.white,
                          elevation: 0.2,
                          child: new Text("Buy Now")
                      ),
                  ),
                  new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.red, onPressed: (){}),

                  new IconButton(icon: Icon(Icons.favorite_border),color: Colors.red, onPressed: (){}),

                ],
              ),
              Divider(),
              new ListTile(
                title: new Text("Product Detail"),
                subtitle: new Text("Blazer murah anti maling kalo dijemur diluar"),
              ),
              Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Name", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),),
            ],
          ),

          //BELOM BIKIN PRODUCT BRAND
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Brand", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),),
            ],
          ),

          // DAN TAMBAHKAN PRODUCT CONDITION
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New",),)
            ],
          ),

        Divider(),
        new Text("Similiar Products", style: TextStyle(fontWeight: FontWeight.bold),),
          //similiar product
        Container(
          height: 340.0,
          child: Similiar_products(),
        )
        ],
      ),
    );
  }
}

class Similiar_products extends StatefulWidget {
  @override
  _Similiar_productsState createState() => _Similiar_productsState();
}

class _Similiar_productsState extends State<Similiar_products> {

  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Pants Denim Murah",
      "picture": "images/products/pants2.jpeg",
      "old_price": 150,
      "price": 100,
    },
    {
      "name": "Blazer Kekinian",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Hills Murah",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Gaun Wanita",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "SKT1",
      "picture": "images/products/skt1.jpeg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "SKT2",
      "picture": "images/products/skt2.jpeg",
      "old_price": 100,
      "price": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similiar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similiar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similiar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=>
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => new ProductDetails(
                        //parsing image to new page product detail
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: new Row(children: <Widget>[
                        Expanded(
                          child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        ),

                        new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],)
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

