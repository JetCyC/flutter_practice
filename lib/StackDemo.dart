import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var _stack=new Stack(
      alignment: const Alignment(0.6, 0.6),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage('images/lake.jpg'),
          radius: 100,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.black45
          ),
          child: new Text(
            'Mia B',
            style: new TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        )
      ],
    );

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StackDemo"),
      ),
      body: new  Center(
        child: _stack,
      ),
    );
  }

}