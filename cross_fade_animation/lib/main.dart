import 'dart:async';

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

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isTrue = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  void reload(){
    setState(() {

      if(isTrue)
        isTrue = false;
      else
        isTrue = true;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter cross Animation"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                duration: Duration(seconds: 2),
                firstChild: Text("Hello CrossFade"),
                secondChild: Image.asset(
                    'assets/image/welcome-png.png',
                  width: 200,
                  height: 100,
                ),
                crossFadeState: isTrue ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                ),
            ElevatedButton(onPressed: (){
              reload();
            }, child: Text("Clicked!!"))
          ],
        ),
      )
    );
  }
}
