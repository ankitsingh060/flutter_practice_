import 'package:flutter/material.dart';
import 'package:splash_screen_switchingscreen/IntroPage.dart';
import 'package:splash_screen_switchingscreen/splash_screen.dart';

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
      // home: IntroPage(),
      home:SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Splash Screen"),
      ),
      body:Text("Hello World")
    );
  }
}
