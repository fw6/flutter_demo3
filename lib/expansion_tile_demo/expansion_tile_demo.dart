import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile Demo'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('Expansion Tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.cyan.shade900,
          children: <Widget>[
            ListTile(
              title: Text('List Tile'),
              subtitle: Text('Subtitle'),
            )
          ],
          initiallyExpanded: true,
        ),
      ),
    );
  }
}
