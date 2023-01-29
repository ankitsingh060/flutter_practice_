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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  // Color bgColor = Colors.greenAccent;
  Decoration  myDecor = BoxDecoration(
    color: Colors.greenAccent,
    borderRadius: BorderRadius.circular(2)
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Animation Project"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              // color: bgColor,
              decoration: myDecor,
              curve: Curves.slowMiddle,
              duration: Duration(seconds : 2),
            ),

            ElevatedButton(onPressed: (){
              setState(() {
                if(flag){
                  _width = 100.0;
                  _height = 200.0;
                  flag = false;
                  // bgColor = Colors.black;
                  myDecor = BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(21)
                  );
                }
                else{
                  _width = 200.0;
                  _height = 100.0;
                  flag = true;
                  // bgColor = Colors.pink;
                  myDecor = BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(11)
                  );
                }
              });
            },
                child: Text('Animated'))
          ],
        ),
      )
    );
  }
}
