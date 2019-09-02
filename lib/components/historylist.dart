import 'package:flutter/material.dart';

Container historyList(String namaTelaah, IconData icon) {
  return Container(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text(namaTelaah),
          trailing: Icon(icon),
        ),
        Divider(),
      ],
    ),
  );
}
