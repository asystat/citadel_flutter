import 'package:citadel/swidgets/Yuwit.dart';
import 'package:citadel/swidgets/sTwit.dart';
import 'package:flutter/material.dart';

class STimeItem extends StatelessWidget {
  const STimeItem({this.title = "date"});

  // Fields in a Widget subclass are always marked "final"
  final String title;

  @override
  Widget build(BuildContext context) {

    return new IntrinsicHeight(
        child:new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left:10.0),
                    child: new Container(
                    width: 1.0,
                    height: 100,
                    color: const Color(0xFFAAAAAA)
                )),

                new Text(
                  title,
                  style: new TextStyle(fontSize:12.0,
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                Expanded(
                    child: Padding(
                    padding: EdgeInsets.only(left:10.0),
                    child: new Container(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        width: 1.0,
                        color: const Color(0xFFAAAAAA)
                    ))),
              ]

          ),
          new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               new Container(
                        width: 0.0,
                        height: 100,
                        color: const Color(0xFFAAAAAA)
                    ),
                Yuwit(),
                STwit(),
                STwit()
              ]
          )
        ]
    ));
  }
}
