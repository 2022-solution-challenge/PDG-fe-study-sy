import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

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
  return Container(
    width : 300,

    child:CarouselSlider(
      options: CarouselOptions(
      height: 100,
      enableInfiniteScroll: false,
      initialPage: 1,),
      items: [1, 2, 3, 4, 5,6].map((i) { //items의 개수를 동적으로 설정할 필요
        return Builder(
          builder: (BuildContext context) {
            if (i == 1){
              return Container(
                alignment: const Alignment(100,0),
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child : Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                )));

            }
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child : Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                )));
          },
        );
      }).toList(),
    ),
  );
}

Widget _myRecords() {
  return Text('내 기록 보기');
}

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is a User Page'),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    UserPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navi'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 255, 128, 122),
        onTap: _onItemTapped,
      ),
    );
  }
}
