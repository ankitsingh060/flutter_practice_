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
  var arrData = [
    {
      'name' : 'Rohit',
      'mobno' : '7726919670',
      'unread' : '2'
    },
    {
      'name' : 'Mukesh',
      'mobno' : '7726919671',
      'unread' : '1'
    },
    {
      'name' : 'Ramesh',
      'mobno' : '7726919673',
      'unread' : '3'
    },
    {
      'name' : 'Rahul',
      'mobno' : '7726919674',
      'unread' : '1'
    },
    {
      'name' : 'Mohit',
      'mobno' : '7726919675',
      'unread' : '2'
    },
    {
      'name' : 'Ayush',
      'mobno' : '7726919676',
      'unread' : '3'
    },
    {
      'name' : 'Ayushi',
      'mobno' : '7726919678',
      'unread' : '1'
    },
    {
      'name' : 'Anurag',
      'mobno' : '7726919679',
      'unread' : '2'
    },
    // 'Mukesh',
    // 'Rishikesh',
    // 'Mohit',
    // 'Ankit',
    // 'Rahul',
    // 'Himanshu',
    // 'Basant',
    // 'Ayush',
    // 'Rocky',
    // 'Ritu',
    // 'Akash',
    // 'Ranjan',
    // 'Ranveer',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Mapping list Widgets"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: arrData.map((value) =>
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text(value['name'].toString()),
                        subtitle: Text(value['mobno'].toString()),
                        trailing: CircleAvatar(
                          radius: 12,
                            backgroundColor: Colors.lightGreen,
                            child: Text(value['unread'].toString()),
                        ),
                ),
                     ),
                   ),
                 ),

               //  Padding(
               //   padding: const EdgeInsets.all(8.0),
               //   child: Container(
               //     decoration: BoxDecoration(
               //       color: Colors.orange,
               //       borderRadius: BorderRadius.circular(12)
               //     ),
               //     child: Padding(
               //       padding: const EdgeInsets.all(8.0),
               //       child: Center(child: Text(value)),
               //     ),
               //   ),
               // );
            ).toList(),
          ),
        ),
      )
    );
  }
}
