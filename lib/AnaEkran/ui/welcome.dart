import 'package:flutter/material.dart';

Column welcome() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 30,
      ),
      // Welcome
      Text(
        'Welcome!',
        style: TextStyle(
          fontSize: 27,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      // subtitle..
      Text(
        'Please Sign-in to continue',
        style: TextStyle(
          color: Colors.black.withOpacity(0.6),
        ),
      ),
    ],
  );
}
