import 'package:flutter/material.dart';

Card telaahOverviewCard(
  Color colors,
  String telaahCount,
  String telaahType,
  IconData icon,
) {
  return Card(
    color: colors,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.3),
    ),
    child: Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                telaahCount,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                telaahType,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            width: 15.0,
          ),
          Icon(
            icon,
            size: 150.0,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
    ),
  );
}
