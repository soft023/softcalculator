import 'package:flutter/material.dart';
import 'fixed.dart';
import 'Loan.dart';




class SoftCalc extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
   final barcol = const Color(0xFF660623 );
   TextStyle txtstyle = Theme.of(context).textTheme.title;
   final txtcol = const Color(0xFFfbfcfc );


   return Scaffold(
     appBar: AppBar(
       title: Text("Soft Calculator"),
       backgroundColor: barcol,

     ),

     body:Material(
       color: txtcol,
       child: Column(
         children: <Widget>[
           
           Padding(
             padding:EdgeInsets.only(
               top:80.0,
               bottom: 30.0
             ),
             child: Center(
               child:
               ButtonTheme(
                 minWidth: 250.0,
                 height: 80.0,
                 splashColor: Colors.yellow,
                 child: RaisedButton(
                
                color: barcol,
               child: Text(
              'Fixed Deposit',
               style: TextStyle(
              
               color: txtcol,
               fontSize: 30.0
             ),
           ),
          // color: txtcol,
           elevation: 5.0,
           onPressed: (){
            Navigator.push(
          context,
           MaterialPageRoute(
          builder:(BuildContext context) => Fixed()));
         }

       ))
              
      
             )
           ),         

     Padding(
             padding:EdgeInsets.only(
               top:15.0,
               //bottom: 20.0
             ),
             child: Center( child:
               ButtonTheme(
                 minWidth: 250.0,
                 height: 80.0,
              splashColor: Colors.lightBlueAccent,
              child: RaisedButton(
                color: barcol,
               child: Text(
              'Loan Product',
               style: TextStyle(
               color: txtcol,
               fontSize: 30.0
             ),
           ),
          // color: txtcol,
           elevation: 5.0,
           onPressed: (){
         Navigator.push(
          context,
           MaterialPageRoute(
          builder:(BuildContext context) => Loan()));
     }

       ))
              
      
             )
           ),
          







            ]

      ,
    
       ),

     )
   );
  }

  

}