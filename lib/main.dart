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
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
leading: Icon(Icons.album),
title:Text('The Enchanted Nightingale'),
subtitle:Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Buy Tickets'),
                    onPressed: (){

                    },
                  ),
                    FlatButton(
             child: Text('LISTEN'),
             onPressed: (){ },
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
