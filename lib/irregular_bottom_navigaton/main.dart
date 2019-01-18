import 'package:flutter/material.dart';
import './irregular_bottom_navigationbar.dart';

void main() => runApp(
      MaterialApp(
        title: 'Irregular Bottom Navigation',
        // 自定义主题样本
        theme: ThemeData(primarySwatch: Colors.purple),
        home: IrregularBottomNavigationWidget(),
      ),
    );
