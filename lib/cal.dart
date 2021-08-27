import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Cal extends StatefulWidget {
 
  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {
  var output = " ";
  // TextEditingController 
  Widget xyz(no) {
       return ElevatedButton(
            onPressed: () {
              setState(() {
                output=output+no;
              });
            },
            child: Text(no),
            style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            
            textStyle: TextStyle(
                      
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                      )
                    ),
                );
              }

clear() {
    setState(() {
      output = " ";
    });
  }

delete(){
  output=
}



  result() {
    Parser p = Parser();
    Expression exp = p.parse(output);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      output = eval.toString();
    });
  }


  
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
        body: Column(
          children: [
            Container(
                          padding: EdgeInsets.only(top: 180,left:10),
                          height: 250,
                          width: 380,
                          color: Colors.white,
                          child: Text(output,style: TextStyle(color: Colors.black,fontSize:30, fontWeight:FontWeight.bold)),
                                ),
                          // 2nd Container
                              Container(
                                  
                                     height:550,
                                     width:380,
                                     color:Colors.white,
                                     // Column
                                     child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                               children: [
                                               // Row 1
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                                                     ElevatedButton(onPressed: clear, child: Text("C"),style: ElevatedButton.styleFrom(
                                                           padding: EdgeInsets.all(20.0),
                                                           textStyle: TextStyle(
                                                           fontSize: 30,
                                                           fontWeight: FontWeight.bold
                                                           ) ),),
                                                     xyz("."),
                                                     xyz(","),
                                                     ElevatedButton(onPressed: delete, child: Text("D"),style: ElevatedButton.styleFrom(
                                                           padding: EdgeInsets.all(20.0),
                                                           textStyle: TextStyle(
                                                           fontSize: 30,
                                                           fontWeight: FontWeight.bold
                                                           ) ),),
                                                    // ElevatedButton(onPressed: (){

                                                    // }, child: Text("D"))
                                                      ],),
                                              // Row 2
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                                                     xyz("7"),
                                                     xyz("8"),
                                                     xyz("9"),
                                                     xyz("+"),
                                                      ],),
                                              // Row 3
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                                                     xyz("4"),
                                                     xyz("5"),
                                                     xyz("6"),
                                                     xyz("-"),
                                                      ],),
                                              // Row 4
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                                                     xyz("1"),
                                                     xyz("2"),
                                                     xyz("3"),
                                                     xyz("*"),
                                                      ],),
                                                    
                                              // Row 5
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                                                     xyz("."),
                                                     xyz("0"),
                                                     xyz("/"),
                                                     ElevatedButton(onPressed: result, child: Text("="),style: ElevatedButton.styleFrom(
                                                           padding: EdgeInsets.all(20.0),
                                                           textStyle: TextStyle(
                                                           fontSize: 30,
                                                           ) ),),
                                                     
                                                      ],),
                                                      
                                                ],
                                           )
                                      ),
                                   ],
                              ),
                         )          
                   );
              }
         }



