import 'package:flutter/material.dart';

//TapboxA 管理自身状态.
class TabboxA extends StatefulWidget {
  TabboxA({Key key}) : super(key: key);
  @override
  _TabboxAState createState() {
    // TODO: implement createState
    return _TabboxAState();
  }
}

class _TabboxAState extends State<TabboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: new BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}
