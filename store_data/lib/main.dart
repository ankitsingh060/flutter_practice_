import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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

  var nameController = TextEditingController();

  static const String KEYNAME = "name";
  var nameValue = "No Value Find";

  @override
  void initState() {
    super.initState();
    getValue();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("shared pref"),
      ),
      body: Container(
          child: Center(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      label: Text("Name"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      )
                    ),
                  ),
                  SizedBox(height: 11,),
                  ElevatedButton(onPressed: () async{
                    // var name = nameController.text.toString();

                    var prefs = await SharedPreferences.getInstance();
                    prefs.setString(KEYNAME, nameController.text.toString());

                  }, child: Text("Save")),
                  SizedBox(height: 11,),
                  Text(nameValue)
                ],
              ),
            ),
          )
        ),
    );
  }

  void getValue() async{

    var prefs = await SharedPreferences.getInstance();

    var getName = prefs.getString(KEYNAME);

    setState(() {
      nameValue = getName != null ? getName : "No Value Saved";
    });
  }
}
