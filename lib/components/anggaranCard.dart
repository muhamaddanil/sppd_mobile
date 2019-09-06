import 'package:flutter/material.dart';

anggaranCard(String totalAnggaran, String realisasiAnggaran, String sisaAnggaran) {
  return Container(
    child: Card(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Total Anggaran',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      totalAnggaran, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            SizedBox(
              height: 12.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    radius: 80.0,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 8.0,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'Realisasi Anggaran',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      Text(
                        realisasiAnggaran, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 8.0,
                            backgroundColor: Colors.green,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'Sisa Anggaran',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      Text(
                        sisaAnggaran, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
