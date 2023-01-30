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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) :super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result ="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("BMI Calculator "),
      ),
      body:  Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Colors.lightGreen,
              // Colors.blue,
              // Colors.yellow

              Color(0xffa1c4fd),
              Color(0xfffd4fc79)


            ]
          ),
        ),
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI', style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600
                ),),

                SizedBox(height: 21,),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text('Enter your weight'),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text("Enter your Height (in feet) "),
                    prefixIcon: Icon(Icons.height_outlined)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text("Enter your Height (in inches) "),
                    prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 16,),

                ElevatedButton(onPressed: (){

                  var wt  = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();

                  if(wt != "" && ft!= "" && inch!="")
                    {
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inch);

                      var tInch = (iFt * 12) + iInch;
                      var tM = (tInch*2.54)/100;

                      var bmi = iWt/(tM*tM);

                      var msg="";

                      if(bmi>25) {
                        msg = "You are overWeight";
                      }
                      else if(bmi<18)
                        msg = "You are underWeight";
                      else
                        msg = "you are fit ";

                      setState(() {
                        result = " $msg \n Your BMI is ${bmi.toStringAsFixed(2)}";
                      });
                    }
                  else{
                    setState(() {
                      result = "Please fill the required blanks !!";

                    });
                  }

                }, child: Text("Calculate")),

                Text(result , style: TextStyle(fontSize: 26),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
