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
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Wrap widget"),
      ),
      // body: Wrap(
      //   direction: Axis.horizontal,
      //   alignment: WrapAlignment.center,
      //   spacing: 11,
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color:Colors.deepOrange,
      //     ),
      //     Container(
      //         width: 100,
      //         height: 100,
      //         color:Colors.blue,
      //     ),
      //     Container(
      //         width: 100,
      //         height: 100,
      //         color:Colors.deepOrange,
      //     ),
      //     Container(
      //         width: 50,
      //         height: 100,
      //         color:Colors.black,
      //     ),
      //     Container(
      //         width: 100,
      //         height: 100,
      //         color:Colors.deepOrange,
      //     ),
      //     Container(
      //         width: 100,
      //         height: 100,
      //         color:Colors.lightGreenAccent,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color:Colors.deepOrange,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color:Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color:Colors.deepOrange,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color:Colors.black,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color:Colors.deepOrange,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color:Colors.lightGreenAccent,
      //     ),
      //   ],
      // )

      // // Size Box Widget
      // body: Row(
      //   children: [
      //     SizedBox.square(
      //       dimension: 100,
      //
      //       child: ElevatedButton(
      //         onPressed: (){
      //
      //         },
      //         child: Text("Clicked me!!"),
      //       ),
      //     ),
      //     SizedBox(
      //       width: 20,
      //     ),
      //     SizedBox.square(
      //       dimension: 100,
      //
      //       child: ElevatedButton(
      //         onPressed: (){
      //
      //         },
      //         child: Text("Clicked me!!"),
      //       ),
      //     ),
      //   ],
      // ),

      //Rich Text
      body: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 25
          ),
          children: [
            TextSpan(text: "Hello"),
            TextSpan(text: "World!" ,style:
            TextStyle(color: Colors.red,
            fontSize: 40))
          ]
        ),
      ),
    );
  }
}
