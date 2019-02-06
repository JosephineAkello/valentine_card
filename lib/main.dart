import 'package:flutter/material.dart';


void main(){

  runApp(App());
}

class App extends StatelessWidget{

  Widget build(context){
    return MaterialApp(
      title: 'Code sample for material card',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home: MyStatelessWidget(),
    );
  }
  }
  
