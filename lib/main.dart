import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'business_page.dart';
import 'school_page.dart';
import 'start_page.dart';

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

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    MailPage(),
    HomePage(),
    SchoolPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFF000000),
              blurRadius: 15,
            ),
          ],
          color: Color(0xFF821111),
        ),

      child:BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.transparent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined, size: 30,),
            activeIcon: Icon(Icons.email,size: 30,),
            label: 'Mail',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 30,),
            activeIcon: Icon(Icons.home,size: 30,),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined, size: 30,),
            activeIcon: Icon(Icons.school,size: 30,),
            label: 'School',

          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black.withOpacity(0.7),
        selectedItemColor: Color(0xFFa81b1b),
        onTap: _onItemTapped,
      ),
      ),
    );
  }
}
