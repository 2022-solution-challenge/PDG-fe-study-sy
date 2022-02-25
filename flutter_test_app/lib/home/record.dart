import 'package:flutter/material.dart';

class Record {
	String name;
	String description;
	MaterialColor color;
	IconData icon;
	Record(this.name, this.description, this.color, this.icon);
}

List<Record> records = [
	Record('추가', "Something cool", Colors.amber, Icons.add),
	Record('집', "Hey, why not?", Colors.cyan, Icons.home),
	Record('학교', "This might be OK", Colors.indigo, Icons.school),
	Record('D', "Totally awesome", Colors.green, Icons.crop),
	Record('E', "Rockin out", Colors.pink, Icons.album),
	Record('F', "Take a look", Colors.blue, Icons.adb)
];