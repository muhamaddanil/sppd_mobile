import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sppd_mobile/view/view_login.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
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
                FontAwesomeIcons.signOutAlt,
                color: Colors.black.withOpacity(0.5),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.3)),
                        title: Text('Logout'),
                        content: Text('Yakin anda ingin keluar?'),
                        actions: <Widget>[
                          MaterialButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.3)),
                            color: Colors.red,
                            child: Text(
                              'Tidak',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.3)),
                            color: Colors.green,
                            child: Text(
                              'Iya',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                          ),
                        ],
                      );
                    });
              },
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: RawMaterialButton(
            child: Container(
              child: Text(
                'Simpan',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            onPressed: () {},
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
                  'Profile',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      child: CircleAvatar(
                        radius: 65.0,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      'Kepala Kominfo',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(fontSize: 15.0, color: Colors.green),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
//                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width - 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Nama Depan',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Kepala',
                        hintStyle: TextStyle(color: Colors.black),
                        border: UnderlineInputBorder(),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Nama Belakang',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Kominfo',
                        hintStyle: TextStyle(color: Colors.black),
                        border: UnderlineInputBorder(),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Kepala Kominfo',
                        hintStyle: TextStyle(color: Colors.black),
                        border: UnderlineInputBorder(),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'kepala_kominfo@gmail.com',
                        hintStyle: TextStyle(color: Colors.black),
                        border: UnderlineInputBorder(),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}
