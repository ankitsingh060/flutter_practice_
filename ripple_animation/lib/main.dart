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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  var listRadius = [100.0,150.0,200.0,250.0,300.0,350.0,400.0];
  late Animation _animation;
  late AnimationController _animationController;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 4));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {

      });
    });

    _animationController.forward();
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Ripple Effect"),
      ),
      body:  Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildanimation(listRadius[0]),
            buildanimation(listRadius[1]),
            buildanimation(listRadius[2]),
            buildanimation(listRadius[3]),
            buildanimation(listRadius[4]),
            buildanimation(listRadius[5]),
            Icon(Icons.add_call,color: Colors.white,size: 34,)


          ],
        ),
      )

    );
  }

  Widget buildanimation(radius){

    return Container(
      width: radius * _animationController.value,
      height: radius * _animationController.value,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0 - _animationController.value)
      ),
    );
  }
}
