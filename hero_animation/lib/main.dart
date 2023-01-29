import 'package:flutter/material.dart';
import 'package:hero_animation/detail_page.dart';

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

        title: Text("Hero Animation"),
      ),
      body:Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage(),));
            },
            child: Hero(
                tag: 'backgroound',
                child: Image.asset('assests/Image/welcome.png', width: 150,
                height: 100,)
            ),
          ),
        ),
      )

    );
  }
}
