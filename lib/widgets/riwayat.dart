import 'package:flutter/material.dart';

class riwayat extends StatelessWidget {
  const riwayat({
    Key? key,
    required this.listViewItem,
  }) : super(key: key);

  final List<String> listViewItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          children: listViewItem.map((String value) {
        return Container(
            margin: EdgeInsets.all(10),
            child: Text(
              value,
              style: TextStyle(fontSize: 15),
            ));
      }).toList()),
    );
  }
}