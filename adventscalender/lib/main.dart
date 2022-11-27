import 'package:flutter/material.dart';

import 'Adventstuer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Adventskalender für Anni'),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, required this.title});
  final String title;
  final Map<int,String> tuer ={
     1: 'Erste Tür',  2: 'Zweit Tür mit ganz viel Text jear und es funzt',  3: '0',  4: '0',
     5: '0',  6: '0',  7: '0',  8: '0',
     9: '0', 10: '0', 11: '0', 12: '0',
    13: '0', 14: '0', 15: '0', 16: '0',
    17: '0', 18: '0', 19: '0', 20: '0',
    21: '0', 22: '0', 23: '0', 24: '0',
  };


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children:
              tuer.entries.map((entry)  {
                return Adventstuer(Tag: entry.key, Inhalt: entry.value);
              }).toList()
        ),
      ),
    );
  }
}
