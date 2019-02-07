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
          color: Colors.pinkAccent[100],
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
                  Image.network(
                    'https://picsum.photos/300/300/?image=815',
                    width: 180,
                    height: 200,
                  ),
                ],
              ),
              ButtonTheme.bar(
                child: ButtonBar(
                  children: <Widget>[

                        RaisedButton(
                          child: Text('Never ever!!!'),
                          color: Colors.pink,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                        ),
                        RaisedButton(
                          child: Text('Naaah'),
                          color: Colors.pink,
                          onPressed: () {},
                        ),
                        RaisedButton(
                          child: Text('Yaaay'),
                          color: Colors.pink,
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
