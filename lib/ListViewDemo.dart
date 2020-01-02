import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {


  Container _container = new Container(
      child: new ListTile(
        title: new Text('CineArts at the Empire',
            style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
        subtitle: new Text('85 W Portal Ave'),
        leading: new Icon(Icons.theaters,
          color: Colors.blue[500]),
      )
  );

  List<Container> getList(int count) {
    return new List<Container>.generate(
        count,
            (int index) =>_container
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("ListViewDemo")),
      body: new Center(
        child: new ListView(
          children: getList(30),
        ),
      ),
    );
  }
}
