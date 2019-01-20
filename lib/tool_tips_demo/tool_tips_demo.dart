import 'package:flutter/material.dart';

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tool Tip Demo'),
      ),
      body: Center(
        child: Tooltip(
          child: Image.network(
              'https://images8.alphacoders.com/854/thumb-350-854881.jpg'),
          message: '不要碰我,.....',
        ),
      ),
    );
  }
}
