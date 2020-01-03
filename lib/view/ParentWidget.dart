import 'package:flutter/material.dart';
import 'package:flutter_practice/view/TapboxB.dart';

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() {
    // TODO: implement createState
    return new _ParentWidgetState();
  }
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new TapboxB(
          active: _active,
          onChanged: handleTapboxChanged),
    );
  }
}
