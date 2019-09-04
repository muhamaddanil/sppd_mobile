import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sppd_mobile/components/telaahCard.dart';

class TelaahDitolak extends StatefulWidget {
  @override
  _TelaahDitolakState createState() => _TelaahDitolakState();
}

class _TelaahDitolakState extends State<TelaahDitolak> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Telaah Ditolak',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300),
                textAlign: TextAlign.left,
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.sort,
                  color: Colors.black.withOpacity(0.2),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.search),
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 20.0),
              border: UnderlineInputBorder(),
              contentPadding:
              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 250,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              telaahCard('Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019', 'HAYATI,SH.M'),
              telaahCard('Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019', 'HAYATI,SH.M'),
              telaahCard('Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019', 'HAYATI,SH.M'),
              telaahCard('Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019', 'HAYATI,SH.M'),
              telaahCard('Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019', 'HAYATI,SH.M'),
              telaahCard('Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019', 'HAYATI,SH.M'),
              telaahCard('Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019', 'HAYATI,SH.M'),
              telaahCard('Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019', 'HAYATI,SH.M'),
            ],
          ),
        ),
      ],
    );
  }
}
