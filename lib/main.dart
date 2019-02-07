import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: "Code sample for material card",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(context) {
    return Center(
      child: Container(
        child: Card(
          color: Colors.blueAccent[100],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text('Dear Beloved'),
                subtitle: Text('Will you be my valentine?'),
              ),
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/valentine.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Text('I love you'),
                ],
              ),
              ButtonTheme.bar(
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text('Naaah'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                    ),
                    FlatButton(
                      child: Text('Yaaay'),
                      onPressed: () {},
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
