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
     9: BackModel(head:"Was ich an dir liebe",main: "Deine Einfühlungsvermögen",footer: "Dein CoChef und Ehemann"),
    10: BackModel(head:"Gott zu dir und du bist so",main: "Wie einen, den seine Mutter tröstet, so will ich euch trösten; ",footer: "Jesaja 66, 13"),
    11: BackModel(head:"Was ich an dir liebe",main: "Dein Mutterinstinkt",footer: "Matthias"),
    12: BackModel(head:"Zuerst er, aber auch ich",main: "Mit ewiger Liebe habe ich dich geliebt; darum habe ich dich zu mir gezogen aus lauter Gnade.",footer: "Jermia 31, 3"),
    13: BackModel(head:"Was ich an dir liebe",main: "Dein Dranbleiben",footer: "Dein Ehemann"),
    14: BackModel(head:"Lass uns durchhalten",main: "Ihm, der mit seiner unerschöpflichen Kraft in uns[25] am Werk ist und unendlich viel mehr zu tun vermag, als wir erbitten oder begreifen können",footer: "Epheser 3, 20"),
    15: BackModel(head:"Du beeindruckst mich",main: "Mit deinem Fleiß",footer: "Paradoxons wars"),
    16: BackModel(head:"Sein Versprechen",main: "Der HERR ist nahe denen, die zerbrochenen Herzens sind, und er hilft denen, die zerschlagenen Geistes sind.",footer: "Psalm 34"),
    17: BackModel(head:"Was mich an dir verzaubert",main: "Deine Musikalität (gaaaanz besonders deine Stimme WOW)",footer: "Dein Lobpreispartner"),
    18: BackModel(head:"Mein Gebet und er wird es machen",main: "Wir bitten unseren Herrn Jesus Christus und Gott, unseren Vater, der uns seine Liebe erwiesen und uns in seiner Gnade eine nie versiegende Ermutigung und eine sichere Hoffnung geschenkt hat, euch in eurem Innersten zu ermutigen und euch die nötige Kraft für jede gute Tat und jedes gute Wort zu geben.",footer: "2.Thessalonicher 2,16-17"),
    19: BackModel(head:"Was mich zum lachen bringt",main: "Dein Humor",footer: "Wer wohl :-)"),
    20: BackModel(head:"Gott spricht dir zu",main: "Der Gerechte muss viel Böses erleiden; aber aus allem rettet ihn der HERR",footer: "Psalm 34, 20"),
    21: BackModel(head:"Was zusammen mit dir trägt",main: "Deine Jesusliebe",footer: "Dein Freund"),
    22: BackModel(head:"Das macht Gott für Dich",main: "Gepriesen sei Gott, der Vater unseres Herrn Jesus Christus! Denn er ist ein Vater, der sich erbarmt, und ein Gott, der auf jede erdenkliche Weise tröstet und ermutigt.",footer: "2. Korinther 1, 3"),
    23: BackModel(head:"Was ich an dir liebe",main: "Dein Durcharbeiten von Herausforderungen",footer: "Matthias war"),
    24: BackModel(head:"❤❤❤❤❤❤❤",main: "Seht doch, wie groß die Liebe ist, die uns der Vater erwiesen hat: Kinder Gottes dürfen wir uns nennen, und wir sind es tatsächlich!",footer: "1. Johannes 3, 1"),
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
          mainAxisSpacing: 1.0,
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
