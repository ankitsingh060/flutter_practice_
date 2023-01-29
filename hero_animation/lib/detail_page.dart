import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Detail page"),
       ),
       body: Container(
         child: Hero(
             tag: 'background',
             child: Image.asset('assests/Image/welcome.png')),
       ),
     );
  }

}