import 'package:course_projectt/CustomWidgets/custom_circular_button.dart';
import 'package:course_projectt/Home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:course_projectt/CustomWidgets/custom_text_field.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 16),
          child: Text(
            'Log in to your account',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        CustomTextField(
          hintText: 'Username',
          prefixIcon: Icons.perm_identity,
        ),
        CustomTextField(
          hintText: 'Password',
          prefixIcon: Icons.lock_outline,
          obscureText: true,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: FlatButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
              color: Colors.red,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Divider(
            color: Colors.red,
            height: 0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/fb_logo.png',
                color: Colors.white,
              ),
              bgColor: Colors.blue[800],
            ),
            CircularButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/google_logo.png',
                color: Colors.blue[800],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
