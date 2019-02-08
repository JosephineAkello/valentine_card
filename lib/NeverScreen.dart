import 'package:flutter/material.dart';

class NeverScreen extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'This is our thing',
      home: Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Image.network(
          'https://picsum.photos/300/300/?image=1080',
        ),
      ),
    );
  }
}
