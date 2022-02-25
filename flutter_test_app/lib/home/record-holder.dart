import 'package:flutter/material.dart';
import 'record.dart';

class MyRecord extends StatelessWidget {
  MyRecord(this.item);
  final Record item;

  // static final Shadow _shadow =
  //     Shadow(offset: Offset(2.0, 2.0), color: Colors.black26);
  final TextStyle _style = TextStyle(color: Colors.white70);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32)),
        color: item.color.withOpacity(.7),
        child: Container(
            constraints: BoxConstraints.expand(height: 80, width: 100),
            child: RawMaterialButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(item.name, style: _style.copyWith(fontSize: 30)),
                        Icon(item.icon, color: Colors.white70, size: 30),
                      ])
                ],
              ),
            )));
  }
}
