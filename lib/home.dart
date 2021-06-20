import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var result = " ";
  Widget abc(no) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            result = result + no;
          });
        },
        child: Text(no));
  }

  clear() {
    setState(() {
      result = " ";
    });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      result = eval.toString();
    });
  }

/*

 */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              title: Center(
                  child: Text("Calculating App",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold))),
            ),
            body: Container(
              //  decoration: BoxDecoration(border: Border.all(
              //    width: 2.0,
              //    color:Colors.black
              //  ),
              //   borderRadius: BorderRadius.circular(10.0),
              //  ),
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border(
                  top: BorderSide(width: 2.0, color: Color(0xFF000000)),
                  left: BorderSide(width: 2.0, color: Color(0xFF000000)),
                  right: BorderSide(width: 2.0, color: Color(0xFF000000)),
                  bottom: BorderSide(width: 2.0, color: Color(0xFF000000)),
                ),
              ),
/*


*/

              margin: EdgeInsets.only(top: 150, left: 60),

              width: 270,
              height: 270,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      result,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      abc("1"),
                      abc("2"),
                      abc("3"),
                      abc("+"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      abc("4"),
                      abc("5"),
                      abc("6"),
                      abc("-"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      abc("7"),
                      abc("8"),
                      abc("9"),
                      abc("*"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: output, child: Text("=")),
                      abc("0"),
                      ElevatedButton(onPressed: clear, child: Text("C")),
                      abc("/"),
                    ],
                  ),
                ],
              ),
            )));
  }
}
