import 'package:flutter/material.dart';
import './each_view.dart';

class IrregularBottomNavigationWidget extends StatefulWidget {
  _IrregularBottomNavigationWidgetState createState() =>
      _IrregularBottomNavigationWidgetState();
}

class _IrregularBottomNavigationWidgetState
    extends State<IrregularBottomNavigationWidget> {
  List<Widget> _eachView;
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _eachView = List();
    _eachView
      ..add(EachView('home'))
      ..add(EachView('search'))
      ..add(EachView('setting'))
      ..add(EachView('Youtube'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return EachView('New Page');
              },
            ),
          );
        },
        tooltip: 'JJJSSS',
        child: Icon(
          Icons.add,
          color: Colors.white70,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.satellite),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.markunread),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.youtube_searched_for),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
