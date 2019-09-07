import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sppd_mobile/components/detailCard.dart';

class DetailTelaah extends StatefulWidget {
  @override
  _DetailTelaahState createState() => _DetailTelaahState();
}

class _DetailTelaahState extends State<DetailTelaah> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black.withOpacity(0.5),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.solidBell,
              color: Colors.black.withOpacity(0.5),
            ),
            onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RawMaterialButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text(
                     'Tolak',
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 20.0,
                         fontWeight: FontWeight.w400),
                   ),
                   SizedBox(
                     width: 5.0,
                   ),
                   Icon(Icons.close, color: Colors.red,)
                 ],
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20.0,
              child: VerticalDivider(
                color: Colors.white,
              ),
            ),
            RawMaterialButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Terima',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(Icons.check, color: Colors.green,)
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Notifikasi',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: ListView(
                children: <Widget>[],
              ),
            ),
            Expanded(
              child: RawMaterialButton(
                child: Container(
                  color: Color(0xff333333),
                  alignment: Alignment.center,
                  child: Text(
                    'Clear',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(15.0),
              child: Text(
                'Detail Telaah',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300),
                textAlign: TextAlign.left,
              ),
            ),
            detailCard(
                'KEPALA DINAS KOMUNIKASI DAN INFORMATIKA',
                'JUMIATI,SH.MM || KABID.PENYELENGGARAAN E-GOVERNMENT || DINAS KOMUNIKASI DAN INFORMATIKA',
                '22-08-2019 14:14:37',
                'Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019',
                'Dalam Rangka perbaikan penerapan SPBE dan Peningkatan Indeks SPBE K/L/D.',
                'Dalam Rangka perbaikan penerapan SPBE dan Peningkatan Indeks SPBE K/L/D.',
                'Menindak lanjuti hasil Evaluasi Sistem Pemerintahan Elektronik.')
          ],
        ),
      ),
    );
  }
}
