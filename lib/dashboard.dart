import 'package:afyasasa/presentation/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:afyasasa/home.dart';
import 'package:afyasasa/search.dart';
import 'package:afyasasa/user.dart';
import 'package:afyasasa/plugin.dart';

/// This Widget is the main application widget.
class NavBar extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyNavBar(),
    );
  }
}

class MyNavBar extends StatefulWidget {
  MyNavBar({Key key}) : super(key: key);

  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedScreen = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    Text(
      'Payments',
      style: optionStyle,
    ),
    Text(
      'Notifications',
      style: optionStyle,
    ),
    MyUserTabs(),
    
  ];

  // List<Widget> _widgetOptions = <Widget>[
    
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //title: const Text('Salutare'),
      //   backgroundColor: Colors.white,
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedScreen),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.puzzle_outline),
            title: Text('Plugin'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Me'),
          ),
        ],
        currentIndex: _selectedScreen,
        selectedItemColor: Color(0xFFFC670C),
        onTap: _onItemTapped,
      ),
    );
  }
}
