import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sppd_mobile/components/historylist.dart';
import 'package:sppd_mobile/components/telaahoverviewcard.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15.0),
          child: Text(
            'Beranda',
            style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Selamat Datang',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w100),
                  textAlign: TextAlign.right,
                ),
                Text(
                  'Kepala Kominfo',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.right,
                ),
              ],
            )),
        SizedBox(
          height: 15.0,
        ),
        Container(
          height: 200,
          width: 2000,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              telaahOverviewCard(
                Color(0xff29ABE2),
                '123',
                'Telaah Masuk',
                FontAwesomeIcons.list,
              ),
              telaahOverviewCard(
                Color(0xff22B573),
                '123',
                'Telaah Diterima',
                FontAwesomeIcons.check,
              ),
              telaahOverviewCard(
                Colors.red,
                '123',
                'Telaah Ditolak',
                Icons.close,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'History',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.normal),
              ),
              Divider(),
              Container(
                height: MediaQuery.of(context).size.height - 350,
                child: ListView(
                  children: <Widget>[
                    historyList('loremiadpajdpajwdpajwdajwdpajwdpajdpajdpwjdapwjdapjwdpajwdapjwdp', FontAwesomeIcons.check),
                    historyList('loremiadpajdpajwdpajwdajwdpajwdpajdpajdpwjdapwjdapjwdpajwdapjwdp', FontAwesomeIcons.check),
                    historyList('loremiadpajdpajwdpajwdajwdpajwdpajdpajdpwjdapwjdapjwdpajwdapjwdp', FontAwesomeIcons.check),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
