import 'package:flutter/material.dart';




class STwit extends StatelessWidget {
  STwit({this.title = 'title'});

  // Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {

    return new Column(
        children: <Widget>[
        new SCircleImage(),
          Text(title)
    ]);

  }
}


class SCircleImage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
            width: 190.0,
            height: 190.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        "https://i.imgur.com/BoN9kdC.png")
                )
            )),
        new Text("John Doe",
            textScaleFactor: 1.5)
      ],
    )
    ;
  }
}