import 'dart:async';

import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var ratings = new Container(
      padding: new EdgeInsets.all(20.0),
      child:
          new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Icon(Icons.star, color: Colors.black),
            new Icon(Icons.star, color: Colors.black),
            new Icon(Icons.star, color: Colors.black),
            new Icon(Icons.star, color: Colors.black),
            new Icon(Icons.star, color: Colors.black)
          ],
        ),
        new Text(
          '170 Reviews',
          style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20.0),
        )
      ]),
    );

    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );

    var iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new Column(
                children: <Widget>[
                  new Icon(Icons.kitchen, color: Colors.green[500]),
                  new Text('PREP'),
                  new Text('25 min'),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(Icons.timer, color: Colors.green[500]),
                  new Text('cook'),
                  new Text('1 hr')
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(Icons.restaurant, color: Colors.green[500]),
                  new Text('FEEDS:'),
                  new Text('4-6')
                ],
              )
            ],
          ),
        ));

    var leftColumn = new Container(
      padding: new EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: new Column(
        children: <Widget>[
          ratings,
          iconList
        ],
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ThirdScreen'),
      ),
      body: new Center(
        child: new Container(
          margin: new EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child:new Card(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  width: 440,
                  child: leftColumn,
                )
              ],
            ),
          )
        )
      ),
    );
  }
}
