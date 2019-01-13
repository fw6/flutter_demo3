import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';

void main() => runApp(
      MaterialApp(
        title: 'Flutter BottomNavigation',
        theme: ThemeData.light(),
        home: BottomNavigationWidget(),
      ),
    );

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BottomNavigationWidget(),
//     );
//   }
// }
