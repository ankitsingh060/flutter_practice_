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
      home: MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {
  RangeValues values = RangeValues(0, 1);
  @override

  RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Range slider"),
      ),
      body: RangeSlider(
        values: values,
        onChanged: (newValue)
        {
          values = newValue;
        },
      )
    );
  }
}
