import 'package:flutter/material.dart';

import './ui/done.dart';
import './ui/signIn.dart';
import './ui/welcomeText.dart';

class WelcomeEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: statusBarHeight,
          ),
          // Done Iconu
          buildContainerDone(),
          SizedBox(
            height: 20,
          ),
          // Sign In Successful! texti
          buildTextSignIn(),
          SizedBox(
            height: 20,
          ),
          // Welcome to Flutter-Team
          buildTextWelcome(),
        ],
      ),
    );
  }
}
