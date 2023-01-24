import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int firstnos = 0;
  int secondnos = 0;
  String texttodisplay = "";
  String res = "";
  String opertoperform = "";
  void btnClicked(String btnvalue)
  {
    if(btnvalue =="C")
      {
        texttodisplay = "";
        firstnos = 0;
        secondnos = 0;
        res= "";
      }
    else if(btnvalue == "+" || btnvalue == "-" || btnvalue == "x" || btnvalue == "/" ){
      firstnos = int.parse(texttodisplay);
      res = "";
      opertoperform = btnvalue;
    }
    else if(btnvalue == "=")
      {
        secondnos = int.parse(texttodisplay);
        if(opertoperform == "+")
          res = (firstnos + secondnos).toString();
        if(opertoperform == "-")
          res = (firstnos - secondnos).toString();
        if(opertoperform == "x")
          res = (firstnos * secondnos).toString();
        if(opertoperform == "/")
          if(secondnos==0)
            res="can't divided by zero";
          else
          res = (firstnos ~/ secondnos).toString();
      }
    else{
      res = int.parse(texttodisplay + btnvalue).toString();
    }

    setState(() {
      texttodisplay = res;
    });
  }

  Widget custombutton(String btnvalue){
    return Expanded(
      child: OutlinedButton(
          // padding: EdgeInsets.all(15),
        onPressed: () => btnClicked(btnvalue),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            '$btnvalue',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Expanded(
               child: Container(
                 padding: EdgeInsets.all(20.0),
                 alignment: Alignment.bottomRight,
                 child: Text(
                   "$texttodisplay",
                   style: TextStyle(
                     fontSize: 30.0,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
               ),
             ),
             Row(
               children: [
                 custombutton('9'),
                 custombutton('8'),
                 custombutton('7'),
                 custombutton('+'),
               ],
             ),
             Row(
               children: [
                 custombutton('6'),
                 custombutton('5'),
                 custombutton('4'),
                 custombutton('-'),

               ],
             ),
             Row(
               children: [
                 custombutton('3'),
                 custombutton('2'),
                 custombutton('1'),
                 custombutton('x'),
               ],
             ),
             Row(
               children: [
                 custombutton('C'),
                 custombutton('0'),
                 custombutton('='),
                 custombutton('/'),
               ],
             ),

           ],
         ),
      ),
    );
  }
}
