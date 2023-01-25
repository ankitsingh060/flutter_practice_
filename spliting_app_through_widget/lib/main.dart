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

        title: Text("Custom widget"),
      ),
      body: Container(
         child : Column(
           children: [
             CatItems(),
             contact(),
             Expanded(
               flex:5,
               child: Container(
                 color: Colors.black,
               ),
             )

           ],
         ),
      ),
    );
  }
}

class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
          color: Colors.blue,
          child: ListView.builder(itemBuilder: (context,Index) => Padding(
            padding: const EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          )
      ),
    );
  }

}
class contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        flex: 4,
        child: Container(
          color: Colors.yellow,
          child: ListView.builder(itemBuilder: (context,index) => Padding(
            padding: const EdgeInsets.all(9.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
              title: Text('Name'),
              subtitle: Text('Mob Nos'),
              trailing: Icon(Icons.delete),
            ),
          )),
        ),
      );
  }

}


