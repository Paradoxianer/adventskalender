import 'package:adventscalender/models/back_model.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Adventstuer extends StatelessWidget {
  Adventstuer({required this.Tag, required this.backModel});
  final Tag;
  final BackModel backModel;
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    return Card(
        elevation: 0.0,
        margin:
            EdgeInsets.only(left: 2.0, right: 2.0, top: 2.0, bottom: 2.0),
        color: Color(0x00000000),
        child: FlipCard(
            flipOnTouch: Tag < date.day, //&& date.month==12,
            direction: FlipDirection.HORIZONTAL,
            speed: 1000,
            onFlipDone: (status) {
              //later store the stat of this widget here
              print(status);
            },
            front: Container(
              decoration: BoxDecoration(
                color: Color(0xFF993333),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AutoSizeText(Tag.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .apply(fontFamily: 'Cartoon Blocks Christmas'))
                ],
              ),
            ),
            back: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF007777),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Padding(
                    padding: EdgeInsets.all(2),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          //Header Container
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: AutoSizeText(
                                  maxLines: 1,
                                  wrapWords: false,
                                  softWrap: false,
                                  backModel.head,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                            ),
                          //Body Container
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: AutoSizeText(
                                backModel.main,
                                style: Theme.of(context).textTheme.headline1,
                                softWrap: true,
                              ),
                            ),
                          ),
                          //Footer Container
                          //Here you will get unexpected behaviour when keyboard pops-up.
                          //So its better to use `bottomNavigationBar` to avoid this.
                          Padding(
                            padding: EdgeInsets.all(2),
                            child: AutoSizeText(
                                  backModel.footer,
                                  maxLines: 1,
                                  wrapWords: false,
                                  softWrap: false,
                                  minFontSize: 2.0,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                          ),
                        ])))));
  }
}
