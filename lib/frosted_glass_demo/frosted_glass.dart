import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
                'https://images8.alphacoders.com/984/thumb-350-984617.jpg'),
          ),
          Center(
            child: ClipRect(
              // 可裁切矩形
              child: BackdropFilter(
                // 背景过滤器
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 300.0,
                    height: 500.0,
                    decoration: BoxDecoration(color: Colors.grey.shade500),
                    child: Center(
                      child: Text(
                        'Flutter',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
