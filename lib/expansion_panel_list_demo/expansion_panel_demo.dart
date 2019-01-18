import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<int> mList;
  List<_ExpandStateBean> expandStateList;
  _ExpansionPanelDemoState() {
    mList = new List();
    expandStateList = new List();
    for (int i = 0; i < 20; i++) {
      mList.add(i);
      expandStateList.add(_ExpandStateBean(i, false));
    }
  }

  _setCurrentIndex(index, isExpand) {
    setState(() {
      expandStateList.forEach((item) {
        if (item.index == index) {
          item.isOpen = !item.isOpen;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel List'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bol) {
            _setCurrentIndex(index, bol);
          },
          children: mList.map(
            (index) {
              return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('this is NO.$index'),
                  );
                },
                body: ListTile(
                  title: Text('expansion No.$index'),
                ),
                isExpanded: expandStateList[index].isOpen,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

class _ExpandStateBean {
  bool isOpen;
  int index;
  _ExpandStateBean(this.index, this.isOpen);
}
