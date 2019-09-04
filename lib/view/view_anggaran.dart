import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sppd_mobile/components/telaahCard.dart';

class Anggaran extends StatefulWidget {
  @override
  _AnggaranState createState() => _AnggaranState();
}

class _AnggaranState extends State<Anggaran> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
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
        child: RawMaterialButton(
          child: Container(
            child: Text(
              'Screenshot',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
          onPressed: () {},
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
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(15.0),
              child: Text(
                'Diagram Anggaran',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300),
                textAlign: TextAlign.left,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
