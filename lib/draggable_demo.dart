import 'package:flutter/material.dart';
import './draggable_widget.dart';

class DraggableDemo extends StatefulWidget {
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(80, 80),
            widgetColor: Colors.teal[500],
          ),
          DraggableWidget(
            offset: Offset(180, 80),
            widgetColor: Colors.red[500],
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color) {
                _draggableColor = color;
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 200,
                  height: 200,
                  color: _draggableColor,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
