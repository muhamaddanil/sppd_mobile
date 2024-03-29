import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sppd_mobile/components/telaahCard.dart';

class TelaahDiterima extends StatefulWidget {
  @override
  _TelaahDiterimaState createState() => _TelaahDiterimaState();
}

class _TelaahDiterimaState extends State<TelaahDiterima> {
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

              //------------------------- PAGE TITLE -------------------------//
              Text(
                'Telaah Diterima',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300),
                textAlign: TextAlign.left,
              ),
              //------------------------- END PAGE TITLE -------------------------//

              //------------------------- SORT BUTTON -------------------------//
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.sort,
                  color: Colors.black.withOpacity(0.2),
                ),
                onPressed: () {
                  showDialog(
                      context: context, builder: (BuildContext context) {
                    return AlertDialog(
                      elevation: 0.0,
                      backgroundColor: Colors.white.withOpacity(0.0),
                      title: Column(
                        children: <Widget>[
                          RawMaterialButton(
                            child: Text('Terbaru', style: TextStyle(fontSize: 32.0, color: Colors.white),),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(
                            child: Divider( color: Colors.white,),
                          ),
                          RawMaterialButton(
                            child: Text('Terlama', style: TextStyle(fontSize: 32.0, color: Colors.white),),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),

                    );
                  });
                },
              ),
              //------------------------- SORT BUTTON -------------------------//
            ],
          ),
        ),

        //------------------------- SEARCH TEXTFIELD -------------------------//
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
        //------------------------- END SEARCH TEXTFIELD -------------------------//

        //------------------------- TELAAH LIST -------------------------//
        Container(
          height: MediaQuery.of(context).size.height - 250,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              telaahCard(
                  context,
                  'Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019',
                  'HAYATI,SH.M', '22-08-2019 14:14:37'),
              telaahCard(
                  context,
                  'Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019',
                  'HAYATI,SH.M', '22-08-2019 14:14:37'),
              telaahCard(
                  context,
                  'Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019',
                  'HAYATI,SH.M', '22-08-2019 14:14:37'),
              telaahCard(
                  context,
                  'Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019',
                  'HAYATI,SH.M', '22-08-2019 14:14:37'),
              telaahCard(
                  context,
                  'Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019',
                  'HAYATI,SH.M', '22-08-2019 14:14:37'),
              telaahCard(
                  context,
                  'Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019',
                  'HAYATI,SH.M', '22-08-2019 14:14:37'),
              telaahCard(
                  context,
                  'Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019',
                  'HAYATI,SH.M', '22-08-2019 14:14:37'),
              telaahCard(
                  context,
                  'Menghadiri Undangan Kegiatan Asistensi Sistem Pemerintahan berbasis Elektronik Tahun 2019',
                  'HAYATI,SH.M', '22-08-2019 14:14:37'),
            ],
          ),
        ),
        //------------------------- END TELAAH LIST -------------------------//

      ],
    );
  }
}
