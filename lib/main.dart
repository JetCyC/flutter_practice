import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_practice/CardDemo.dart';
import 'package:flutter_practice/FifthScreen.dart';
import 'package:flutter_practice/FourthScreen.dart';
import 'package:flutter_practice/ListViewDemo.dart';
import 'package:flutter_practice/SecondScreen.dart';
import 'package:flutter_practice/StackDemo.dart';
import 'package:flutter_practice/ThirdScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Screen',
      home: RandomWords(),
      theme: new ThemeData(primaryColor: Colors.white),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = new Set<WordPair>(); //store user's favourite
  var mBuildContext;

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    mBuildContext = context;
    return Scaffold(
      appBar: AppBar(
        title: Text('startup name generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(prefix0.generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null),
      onTap: () => {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        }),
        Navigator.push(
            mBuildContext,
            new MaterialPageRoute(
                builder: (mBuildContext) => new CardDemo()))
      },
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
