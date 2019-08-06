import 'package:flutter/material.dart';
import 'SignInEmail.dart';

class SignUp extends StatefulWidget {
  @override
  _checkState createState() => _checkState();
}

class _checkState extends State<SignUp> {
  bool tnc = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF3CB371)),
      ),
      body: new Container(
        width: double.infinity,
        child: new ListView(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new SignIn(),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 30.0),
                  child: new Text(
                    "Sign up",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: new TextField(
                decoration: new InputDecoration(labelText: 'Name'),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: new TextField(
                decoration: new InputDecoration(labelText: 'Email'),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Password'),
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0, left: 5.0, top: 10.0),
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                                value: tnc,
                                onChanged: (bool value) {
                                  setState(() {
                                    tnc = value;
                                  });
                                }),
                            Text(
                              "I agree to the terms and conditions.",
                              style: new TextStyle(
                                  fontSize: 14.0, color: Color(0xFF3CB371)),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0, left: 20.0, top: 10.0, bottom: 25.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          color: Color(0xFF3CB371),
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text(
                        "Submit",
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
