// import 'package:dart_tutorial_001/dart_tutorial_001.dart' as dart_tutorial_001;
import 'dart:io';

void main() {
  stdout.writeln('What is yout name : ? ');
  String? name = stdin.readLineSync();
  
  print('Hello ' + '${name}');
}
