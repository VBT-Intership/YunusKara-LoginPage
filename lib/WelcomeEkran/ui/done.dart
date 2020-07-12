import 'package:flutter/material.dart';

Container buildContainerDone() {
  return Container(
    width: 76,
    height: 76,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0, 4),
          blurRadius: 4,
        ),
      ],
    ),
    child: Icon(
      Icons.done_outline,
      size: 40,
      color: Colors.purple,
    ),
  );
}
