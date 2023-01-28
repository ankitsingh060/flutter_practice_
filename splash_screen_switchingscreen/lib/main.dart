import 'package:flutter/material.dart';
import 'package:splash_screen_switchingscreen/IntroPage.dart';
import 'package:splash_screen_switchingscreen/splash_screen.dart';

import 'my_profile_screen.dart';

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

  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Splash Screen"),
      ),
      body:Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('DashBoard Screen ',style: TextStyle(
                fontSize: 25,

              ),),

              SizedBox(height: 11,),

              TextField(
                controller: nameController,
              ),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(nameController.text.toString())
                  )
                );
              },
                  child: Text("Welcome to Flutter World"))
            ],
          ),
        ),
      )
    );
  }
}
