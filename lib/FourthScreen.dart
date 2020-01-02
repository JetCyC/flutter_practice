import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var container = new Container(
      decoration: new BoxDecoration(color: Colors.black26),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new Container(
                      decoration: new BoxDecoration(
                        border:
                            new Border.all(width: 10, color: Colors.black38),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(8.0)),
                      ),
                      margin: const EdgeInsets.all(4),
                      child: new Image.asset("images/cake.jpg"))),
              new Expanded(
                  child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(width: 10, color: Colors.black38),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8)),
                ),
                margin: const EdgeInsets.all(4),
                child: new Image.asset('images/cake.jpg'),
              ))
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new Container(
                      decoration: new BoxDecoration(
                        border:
                        new Border.all(width: 10, color: Colors.black38),
                        borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0)),
                      ),
                      margin: const EdgeInsets.all(4),
                      child: new Image.asset("images/cake.jpg"))),
              new Expanded(
                  child: new Container(
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 10, color: Colors.black38),
                      borderRadius:
                      const BorderRadius.all(const Radius.circular(8)),
                    ),
                    margin: const EdgeInsets.all(4),
                    child: new Image.asset('images/cake.jpg'),
                  ))
            ],
          )
        ]
      ),
    );

    return container;
  }
}
