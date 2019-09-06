import 'package:flutter/material.dart';

import 'package:sppd_mobile/app_layout.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //------------------------- ICON KOTA KENDARI -------------------------//
                Container(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/Kendari.png',
                    scale: 8,
                  ),
                ),
                //------------------------- END ICON KOTA KENDARI -------------------------//

                SizedBox(
                  height: 15.0,
                ),
                
                //------------------------- WELCOME TITLE -------------------------//
                Text(
                  'Login',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'SPPD',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      ' ELEKTRONIK    ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                        backgroundColor: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Text(
                  'KOTA KENDARI',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                //------------------------- END WELCOME TITLE -------------------------//

                SizedBox(
                  height: 50.0,
                ),

                //------------------------- ACCOUNT INPUT -------------------------//
                Card(
                  color: Colors.white,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.3)),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          ),
                        ),
                        SizedBox(
                          child: Divider(),
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
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: RawMaterialButton(
                    fillColor: Color(0xffFBB03B),
                    elevation: 4.0,
                    child: Text(
                      'Masuk',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.3),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainLayout()),
                      );
                    },
                  ),
                ),
                //------------------------- END ACCOUNT INPUT -------------------------//

                SizedBox(
                  height: 50.0,
                ),

                //------------------------- TECHNICAL TEXT -------------------------//
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'OPD-ESP2D Kendari @ 2019',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Support By Techno's Studio",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        "@Self Register Sistem",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                )
                //------------------------- END TECHNICAL TEXT -------------------------//
              ],
            ),
          ),
        ),
      );
  }
}
