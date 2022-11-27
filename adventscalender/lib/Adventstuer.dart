import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';


class Adventstuer extends StatelessWidget {
  Adventstuer({required this.Tag, required this.Inhalt});
  final Tag;
  final Inhalt;
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0, bottom: 32.0),
      color: Color(0x00000000),
      child: FlipCard(
        flipOnTouch: Tag<date.day, //&& date.month==12,
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
          decoration: BoxDecoration(
            color: Color(0xFF770000),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(Tag.toString(),
                  style: Theme.of(context).textTheme.headline1!.apply(fontFamily: 'Cartoon Blocks Christmas')
              ),
            ],
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
            color: Color(0xFF007777),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Center(
            child:
              Padding(
                padding: EdgeInsets.all(15),
                  child: AutoSizeText(Inhalt,
                    style: Theme.of(context).textTheme.headline1
                  )
              )
          ),
        ),
      ),
    );
  }
}
