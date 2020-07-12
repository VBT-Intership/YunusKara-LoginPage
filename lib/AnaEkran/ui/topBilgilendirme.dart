import 'package:flutter/material.dart';

Column topBilgilendirme() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // Welcome and Ikon
      Row(
        children: <Widget>[
          // Welcome
          Text(
            'Flutter-Team',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),
          ),
          // Ikon
          Icon(
            Icons.chevron_right,
            color: Colors.blue,
            size: 30,
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      // Employee Login
      Text(
        'Employee Login',
      ),
    ],
  );
}
