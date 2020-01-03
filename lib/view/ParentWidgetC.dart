import 'package:flutter/material.dart';
import 'package:flutter_practice/view/TapboxC.dart';

class ParentWidgetC extends StatefulWidget {
  @override
  _ParentWidgetStateC createState() {
    // TODO: implement createState
    return new _ParentWidgetStateC();
  }
}

class _ParentWidgetStateC extends State<ParentWidgetC> {
  bool _active = false;

  void handleTapboxChanged(bool newValue) {
    setState(() {
      _active = !newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new TapboxC(
          active: _active,
          onChanged: handleTapboxChanged),
    );
  }
}
