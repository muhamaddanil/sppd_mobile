import 'package:flutter/material.dart';
import 'package:sppd_mobile/view/view_detailtelaah.dart';

Card telaahCard(BuildContext context, String namaTelaah, String pengirimTelaah, String tanggalTelaah) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              namaTelaah,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    pengirimTelaah,
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.black.withOpacity(0.5)),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text('Laporan belum dilampirkan'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(tanggalTelaah),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.3),
                    ),
                    color: Color(0xff29ABE2),
                    child: Text(
                      'Detail',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailTelaah()),
                      );
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
