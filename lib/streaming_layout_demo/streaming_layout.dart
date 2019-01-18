import 'package:flutter/material.dart';

class StreamingLayoutDemo extends StatefulWidget {
  _StreamingLayoutDemoState createState() => _StreamingLayoutDemoState();
}

class _StreamingLayoutDemoState extends State<StreamingLayoutDemo> {
  List<Widget> list;

  @override
  void initState() {
    list = List<Widget>()..add(buildAddButton());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Streaming Layout'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.7,
          child: Container(
            width: width,
            height: height / 2,
            color: Colors.deepPurple,
            child: Wrap(
              children: list,
              spacing: 50.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.amber,
        child: Center(
          child: Text('皂片'),
        ),
      ),
    );
  }
}
