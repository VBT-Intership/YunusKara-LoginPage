import 'package:flutter/material.dart';
import 'package:login/WelcomeEkran/welcome.dart';

import './ui/topBilgilendirme.dart';
import './ui/welcome.dart';
import './ui/signInButton.dart';

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  GlobalKey<FormState> _formState = GlobalKey();
  bool isAutoValidate = false;
  // SingInButton'daki onTap functionu
  void onTapSingInButton() {
    if (_formState.currentState.validate()) {
      print('Hello');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Material(child: WelcomeEkran()),
        ),
      );
    } else {
      print('Error');
      setState(() {
        isAutoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Ekran üzerindeki stat barını yükseliği
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Status Barı kadar boşluk verildi.
            SizedBox(
              height: statusBarHeight,
            ),
            // En Üst kısımdaki bilgilendiri yazılar ve ikon
            topBilgilendirme(),
            // Welcome yazısı ve altındaki bildiri yazısı
            welcome(),
            SizedBox(
              height: 40,
            ),
            // Formun oluştuğu yer
            buildFormAll(),
            SizedBox(
              height: 30,
            ),
            // Sıgn In Buttonu - Welcome Ekranına yönlendirir.
            signInButton(onTapSingInButton),
          ],
        ),
      ),
    );
  }

  Form buildFormAll() {
    return Form(
      autovalidate: true,
      key: _formState,
      child: Column(
        children: <Widget>[
          // Email adress alındğı yer
          TextFormField(
            validator: (value) {
              return value.contains(
                      RegExp(r'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}'))
                  ? null
                  : 'Please write the email correctly.';
            },
            decoration: InputDecoration(
              labelText: 'Email address',
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          // Pasword alındğı yer
          TextFormField(
            validator: (value) {
              return value.isEmpty ? 'Please enter your password.' : null;
            },
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: FlatButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
