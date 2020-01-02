import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {

  Container _container=new Container(
    child: new Column(
      children: <Widget>[
        new Image.asset("images/cake.jpg"),
        new Text("Hello")
      ],
    ));

  List<Container> _buildGridTileList(int count) {
    return new List<Container>.generate(
        count,
        (int index) => _container);
  }

  Widget buildGrid() {
    return new GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing:4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(30),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Gridview'),
      ),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }
}
