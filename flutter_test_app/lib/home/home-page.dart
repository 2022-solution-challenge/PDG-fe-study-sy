import 'package:flutter/material.dart';
import '../demo-card.dart';
import '../items.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      _signUpParents(),
      _whereToGo(),
      _myRecords(),
    ]);
  }
}                       

Widget _signUpParents() {
  return Text('등록하기');
}

Widget _whereToGo() {
  List<DemoCard> _cards = items.map((Item _item) => DemoCard(_item)).toList();

  return Stack(alignment: AlignmentDirectional.topStart, children: <Widget>[
    SizedBox(
      height: 100, // constrain height
      child: ListView(scrollDirection: Axis.horizontal, children: _cards),
    )
  ]);
}

Widget _myRecords() {
  return Text('내 기록 보기');
}