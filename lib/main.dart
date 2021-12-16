import 'package:flutter/material.dart';
import './screen/softcalc.dart';





void main() => runApp (MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: new SoftCalc(),
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),

    );

    
  }

}
