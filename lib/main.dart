import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Code sample for material card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key  key}) : super(key: key);

  @override
  Widget build(context) {
    return Center(
      child: Container(
     child: Card(
 child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
leading: Icon(Icons.card_giftcard),
title:Text('Dear Beloved'),
subtitle:Text('Will you be my valentine?'),
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Yaaay'),
                    onPressed: (){

                    },
                  ),
                    FlatButton(
             child: Text('Naaaah'),
             onPressed: (){ },
                    ),
                  ],
                
              ),
            ),
          ],
        ),
     ),
      ),
       
      );
    
  }
}
