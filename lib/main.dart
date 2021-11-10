import 'package:flutter/material.dart';
import 'package:madillilaapp/HomePage.dart';


//enum Number{one,two,three,four,five,six,seven,eight,nine,point,zero,delete}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: HomePage(),)
    );}
}