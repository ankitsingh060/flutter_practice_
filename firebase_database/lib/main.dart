import 'dart:ffi';

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

class _MyHomePageState extends State<MyHomePage> {

  late String studentName, studentId,studentProgramId;
  late double studentGPA;

  getStudentName(name) {
    this.studentName = name;
  }

  getStudentId(id)
  {
    this.studentId = id;
  }
  getStudentProgramId(programId)
  {
    this.studentProgramId = programId;
  }
  getStudentGPA(GPA)
  {
    this.studentGPA = GPA;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Flutter firebase"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                style: TextStyle(fontSize: 18,),
                decoration: InputDecoration(
                  labelText: "Name",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.blue , width: 2.0),
                    borderRadius: BorderRadius.circular(14.0)
                  )
                ),
                onChanged: (String name) {
                  getStudentName(name);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(fontSize: 18,),
                decoration: InputDecoration(
                    labelText: "StudentID",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.blue , width: 2.0),
                        borderRadius: BorderRadius.circular(14.0)
                    )
                ),
                onChanged: (String id) {
                  getStudentId(id);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(fontSize: 18,),
                decoration: InputDecoration(
                    labelText: "StudentProgramID",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.blue , width: 2.0),
                        borderRadius: BorderRadius.circular(14.0)
                    )
                ),
                onChanged: (String programId) {
                  getStudentProgramId(programId);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(fontSize: 18,),
                decoration: InputDecoration(
                    labelText: "CGPA",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.blue , width: 2.0),
                        borderRadius: BorderRadius.circular(14.0)
                    )
                ),
                onChanged: (String GPA) {
                  getStudentGPA(GPA);
                },
              ),
            ),
          ],
        ),

      )
    );
  }
}
