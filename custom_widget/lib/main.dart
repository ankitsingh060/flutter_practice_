import 'package:custom_widget/widgets/rounded_btn.dart';
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Custom widget"),
      ),
      body: RoundedButton(
        btnName: 'Play',
        icon: Icon(Icons.lock),
        callBack:(){
         print('Logged in !!');
        },textStyle: TextStyle(fontStyle: FontStyle.italic),
      )
    );
  }
}
