import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Time Tracker',
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};
  final _biggerFont = const TextStyle(fontSize: 18);

  // void _pushSaved() {
  //   print("_pushSaved fired");
  //   Navigator.of(context).push(
  //     MaterialPageRoute<void>(
  //       builder: (context) {
  //         final tiles = _saved.map((pair) {
  //           return ListTile(
  //             title: Text(
  //               pair.asPascalCase,
  //               style: _biggerFont,
  //             ),
  //           );
  //         });
  //         final divided = tiles.isNotEmpty
  //             ? ListTile.divideTiles(
  //                 context: context,
  //                 tiles: tiles,
  //               ).toList()
  //             : <Widget>[];
  //         return Scaffold(
  //           appBar: AppBar(
  //             title: const Text('Favorites'),
  //           ),
  //           body: ListView(children: divided),
  //         );
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Time Tracker'),
            bottom: const TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.add_alarm),
              ),
              Tab(
                icon: Icon(Icons.history),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
            ]),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: Text('Time Tracker'),
              ),
              Center(
                child: Text('History'),
              ),
              Center(
                child: Text('Settings'),
              ),
            ],
          )),
    );
  }
}
