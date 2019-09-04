import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sppd_mobile/view/view_anggaran.dart';
import 'package:sppd_mobile/view/view_beranda.dart';
import 'package:sppd_mobile/view/view_profile.dart';
import 'package:sppd_mobile/view/view_telaahlist.dart';
import 'package:sppd_mobile/view/view_telaahditerima.dart';
import 'package:sppd_mobile/view/view_telaahditolak.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();

    currentView = Beranda();
    homeBtnClr = Color(0xffFBB03B);
    listBtnClr = Colors.white;
    chkBtnClr = Colors.white;
    clsBtnClr = Colors.white;
  }

  Widget currentView;
  var homeBtnClr;
  var listBtnClr;
  var chkBtnClr;
  var clsBtnClr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RawMaterialButton(
          shape: CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Color(0xffFBB03B),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
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
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.chartPie),
        backgroundColor: Color(0xff22B573),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Anggaran()),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.home),
              color: homeBtnClr,
              onPressed: () {
                setState(() {
                  currentView = Beranda();
                  homeBtnClr = Color(0xffFBB03B);
                  listBtnClr = Colors.white;
                  chkBtnClr = Colors.white;
                  clsBtnClr = Colors.white;
                });
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.list),
              color: listBtnClr,
              onPressed: () {
                setState(() {
                  currentView = TelaahList();
                  homeBtnClr = Colors.white;
                  listBtnClr = Color(0xffFBB03B);
                  chkBtnClr = Colors.white;
                  clsBtnClr = Colors.white;
                });
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.check),
              color: chkBtnClr,
              onPressed: () {
                setState(() {
                  currentView = TelaahDiterima();
                  homeBtnClr = Colors.white;
                  listBtnClr = Colors.white;
                  chkBtnClr = Color(0xffFBB03B);
                  clsBtnClr = Colors.white;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.close,
                size: 35.0,
              ),
              color: clsBtnClr,
              onPressed: () {
                setState(() {
                  currentView = TelaahDitolak();
                  homeBtnClr = Colors.white;
                  listBtnClr = Colors.white;
                  chkBtnClr = Colors.white;
                  clsBtnClr = Color(0xffFBB03B);
                });
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[currentView],
        ),
      ),
    );
  }
}
