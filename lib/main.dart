import 'package:flutter/material.dart';
import './pages/login.dart';

//import
import 'package:cetolmall/components/horizontal_listview.dart';
import 'package:cetolmall/pages/cart.dart';

import 'components/products.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Login(),
    )
  );
}

