import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:Text('Images'),
      ),
     body: Image(
       image:AssetImage('asset/spiderman 28.jpg'),
       alignment: Alignment.center,
     ),

    ),
  ));
}

