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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  var emailText  = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: "Enter username",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 2
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2
                    ),
                  ),
                  disabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        color: Colors.black45,
                        width: 2
                    ),
                  ),
                  // suffixText: "username exists",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: (){
                    },
                  ),
                  prefixIcon: Icon(Icons.email,color: Colors.red,)
                ),
              ),
              Container(height: 11,),
              TextField(
                controller: passText,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration (
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        color: Colors.deepOrange
                    ),
                  ),
                ),
              ),
              Container(height: 11,),
              ElevatedButton(onPressed:(){
                String uEmail = emailText.text.toString();
                String uPass  = passText.text;

                print("Email: $uEmail, password: $uPass");
              }, child: Text(
                'Login'
              ))
            ],
          ),
        ),
      )
    );
  }
}
