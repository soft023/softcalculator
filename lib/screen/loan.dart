import 'package:flutter/material.dart';
import 'package:intl/intl.dart';//for currency format



class Loan extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoanState();//this is state create :

}



class _LoanState extends State <Loan> {//this is the state we created
  String result = "";
 
  TextEditingController   amtcontroller = TextEditingController();
  TextEditingController ratecontroller = TextEditingController();
  TextEditingController tenurecontroller = TextEditingController();
  



  @override
  Widget build(BuildContext context) {  
   final barcol = const Color(0xFF660623 );
   TextStyle txtstyle = Theme.of(context).textTheme.title;
   final txtcol = const Color(0xFFfbfcfc );
   final formgap = 15.0;



    return Scaffold(
      appBar:AppBar(
        title: Text("Loan Calculator"),
        backgroundColor: barcol,

      ) ,
       body: Container(
         padding: EdgeInsets.all(15.0),
         child: 
         ListView(children: <Widget>[
         Column(
           children: <Widget>[
             Padding( 
               padding: EdgeInsets.only(
                 top: formgap,
                 bottom: formgap
               ),
               child:  TextField(
               controller: amtcontroller,
               decoration: InputDecoration(
                 labelText: "Loan in Naira",
                 hintText: "e.g 2,000,000 ",
                 labelStyle: txtstyle,
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10.0)
                 )
               ),
               keyboardType: TextInputType.number,
               style: TextStyle(
                 fontSize: 20.0,
                 color: barcol
               ),
             ),

             
             ),
             
            
               Padding(
               padding: EdgeInsets.only(
                // top: formgap,
                 bottom: formgap
               ),
               child:
                TextField(
               controller: ratecontroller,
               decoration: InputDecoration(
                 labelText: "Rate in %",
                 hintText: "e.g 14",
                 labelStyle: txtstyle,
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10.0)
                 )
               ),
               keyboardType: TextInputType.number,
               style: TextStyle(
                 fontSize: 20.0,
                 color: barcol
               ),
               
             )),



              Padding( 
               padding: EdgeInsets.only(
                 top: formgap,
                 bottom: formgap
               ),
               child:  TextField(
               controller: tenurecontroller,
               decoration: InputDecoration(
                 labelText: "Tenure in Months",
                 hintText: "e.g 6",
                 labelStyle: txtstyle,
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10.0)
                 )
               ),
               keyboardType: TextInputType.number,
               style: TextStyle(
                 fontSize: 20.0,
                 color: barcol
               ),
             ),

             
             ),
             
            
       
            
           
             


             Row(children: <Widget>[
              


               Expanded(child:
                Padding(
               padding: EdgeInsets.only(
                top: formgap,
                 bottom: formgap
               ),
               child:ButtonTheme(
                // minWidth: 50.0,
                 height: 70.0,
                child: RaisedButton(
                color: barcol,
                textColor: txtcol,
                child: Text(
                  "Submit",
                  textScaleFactor: 1.5,
                  
                ),
                onPressed: (){
                 calculate( context);
                },

              )))),

                      Expanded (child:
               Padding(
               padding: EdgeInsets.only(
                 top: formgap,
                 bottom: formgap
               ),
               child:
              ButtonTheme(
                // minWidth: 50.0,
                 height: 70.0,

              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.red,
                child: Text(
                  "Reset",
                  textScaleFactor: 1.5,
                  
                ),
                onPressed: (){
                  setState(() {
                   _reset() ;
                  });
                }

              ))))

             ],),

             Text(result,
             style : TextStyle(
               color: barcol,
               fontSize: 25.0
             ))


         ]),
              


              
          ] )
           
         ),);
       
    
  }   

  
_calc(){
  double amt = double.parse(amtcontroller.text);
  double rate = double.parse(ratecontroller.text);
  int tenure = int.parse(tenurecontroller.text);

  double interest = (rate / 100)  * amt ;
  double totrepay = interest + amt;
  double repay = totrepay / tenure;
  String summary = "T - Repay:N " + totrepay.toStringAsFixed(2) + '\n'+ '\n' + "M - Repay:N " + repay.toStringAsFixed(2) +
  '\n'+ '\n' + "T - Int:N " + interest.toStringAsFixed(2) ;
  return summary;
}


void _reset(){
  amtcontroller.text ='';
  ratecontroller.text ='';
  tenurecontroller.text ='';

  setState(() {
   result = ''; 
  });
}



void calculate(BuildContext context){
     final barcol = const Color(0xFF660623 );
    var alert = AlertDialog(
       title: Text("Interest Summary",
       style: TextStyle(
               color: barcol,
               fontSize: 25.0
             ),
      ),
      content: Text(_calc(),
       style: TextStyle(
               color: barcol,
               fontSize: 20.0
             ),
      ) ,
     
    );
      showDialog(
      
      context: context,
      builder: (BuildContext context) => alert
      );
  }

}





//for currency format 



