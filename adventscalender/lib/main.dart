import 'package:adventscalender/models/back_model.dart';
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
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Adventskalender für Anni'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final String title;
  final Map<int,BackModel> tuer ={
     1: BackModel(head:"Was ich an dir liebe",main: "Dein Durchhaltevermögen",footer: "dein stolzer Matthias"),
     2: BackModel(head:"Was Gott über dich denkt",main: "Du bist wunderbar gemacht.",footer: "Psalm 139,14"),
     3: BackModel(head:"Was ich an dir bewundere",main: "Deine Disziplin",footer: "Matthias wars"),
     4: BackModel(head:"Wie krass wertvoll du für mich und IHN bist",main: "Du hast ihn nur wenig geringer gemacht als die Engel , ja, mit Ruhm und Ehre hast du ihn gekrönt.",footer: "Psalm 8:6"),
     5: BackModel(head:"Was mich an dir beeindruckt",main: "Dein Stringenz, Dein unglaubliches literatisches Talent und so viel mehr",footer: "schon wieder Matthias"),
     6: BackModel(head:"Er und ich freuen sich über Dich ",main: "Der Herr , euer Gott, ist in eurer Mitte; und was für ein starker Retter ist er! Von ganzem Herzen freut er sich über euch. Weil er euch liebt, redet er nicht länger über eure Schuld. Ja, er jubelt, wenn er an euch denkt!«",footer: "Zefanja 3:17, HFA"),
     7: BackModel(head:"Ich freu mich über Deine",main: "Kreativität",footer: "WOW"),
     8: BackModel(head:"Er sorgt sich um Dich",main: "Macht euch also keine Sorgen! Fragt nicht: Was sollen wir essen? Was sollen wir trinken? Was sollen wir anziehen? Denn um diese Dinge geht es den Heiden, die Gott nicht kennen. Euer Vater im Himmel aber weiß, dass ihr das alles braucht.",footer: "(Matthäus 6, 31-32 NGÜ)"),
     9: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    10: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    11: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    12: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    13: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    14: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    15: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    16: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    17: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    18: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    19: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    20: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    21: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    22: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    23: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
    24: BackModel(head:"Was ich an dir liebe",main: "",footer: ""),
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
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children:
              tuer.entries.map((entry)  {
                return Adventstuer(Tag: entry.key, backModel: entry.value);
              }).toList()
        ),
      ),
    );
  }
}
