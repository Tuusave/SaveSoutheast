import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savesoutheast/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.5),
            radius: 1.0,
            colors: [Colors.yellow[400], Colors.yellow[800]],
          ),
        ),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildlogo(),
            buildText(),
            buildTextFieldUser(),
            buildTextFieldPassword(),
            buildlogin(),
            buildTextButton()
          ],
        )),
      ),
    );
  }

  TextButton buildTextButton() {
    return TextButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Register(),
          )),
      child: Text('New Register'),
    );
  }

  Container buildlogin() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.cloud_upload),
        label: Text('login'),
      ),
    );
  }

  Container buildTextFieldUser() => Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'User',
            border: OutlineInputBorder()),
      ));

  Container buildTextFieldPassword() => Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            border: OutlineInputBorder()),
      ));

  Text buildText() => Text(
        'Save Southeast',
        style: GoogleFonts.righteous(
            textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w400,
          color: Colors.red[900],
          fontStyle: FontStyle.italic,
        )),
      );

  Container buildlogo() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: 120,
      child: Image.asset('images/logo.png'),
    );
  }
}
