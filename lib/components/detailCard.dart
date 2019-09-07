import 'package:flutter/material.dart';

Widget detailCard(
    String kepada,
    String dari,
    String tanggal,
    String perihal,
    String persoalan,
    String fakta,
    String dokumenpendukung,
    ) {
  return Container(
    padding: EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Kepada',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: Divider(),
        ),
        Text(
          kepada,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Dari',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: Divider(),
        ),
        Text(
          dari,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Tanggal',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: Divider(),
        ),
        Text(
          tanggal,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Perihal',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: Divider(),
        ),
        Text(
          perihal,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Persoalan',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: Divider(),
        ),
        Text(
          persoalan,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Fakta-Fakta yang Mempengaruhi',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: Divider(),
        ),
        Text(
          fakta,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Dokumen Pendukung',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: Divider(),
        ),
        Text(
          dokumenpendukung,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
        ),
      ],
    ),
  );
}
