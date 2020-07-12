import 'package:flutter/material.dart';

Widget signInButton(Function onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: 100,
      height: 33,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      child: Text(
        'Sign In',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}
