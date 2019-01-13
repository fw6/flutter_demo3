import 'package:flutter/material.dart';
import './pages/airplay_screen.dart';
import './pages/email_screen.dart';
import './pages/home_screen.dart';
import './pages/pages_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationBarColor = Colors.lightGreenAccent;
  int _currentIndex = 0;
  List<Widget> pages = List();

  @override
  void initState() {
    pages
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationBarColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _bottomNavigationBarColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavigationBarColor,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: _bottomNavigationBarColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottomNavigationBarColor,
            ),
            title: Text(
              'Pages',
              style: TextStyle(color: _bottomNavigationBarColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavigationBarColor,
            ),
            title: Text(
              'Airplay',
              style: TextStyle(color: _bottomNavigationBarColor),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
