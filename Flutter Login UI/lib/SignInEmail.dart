import 'package:flutter/material.dart';
import 'SignUp.dart';

class SignInEmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF3CB371)),
      ),
      body: new Container(
          //width: double.infinity,
          child: new ListView(
            children: <Widget>[
              new SignIn(),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 30.0),
                    child: new Text(
                      "Sign in",
                      style: new TextStyle(fontSize: 30.0),
                    ),
                  )
                ],
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
              new SizedBox(
                height: 15.0,
              ),
              new Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 5.0, left: 20.0, top: 10.0),
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF3CB371),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Login",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, left: 5.0, top: 10.0),
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: new Text(
                          "Forgot Password",
                          style: new TextStyle(
                              fontSize: 17.0, color: Color(0xFF3CB371)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 65.0, bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: new Text("Create A New Account",
                            style: new TextStyle(
                                fontSize: 16.0,
                                color: Color(0xFF3CB371),
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Column(children: <Widget>[
      new Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          new Container(
            height: 70.0,
            width: 70.0,
            padding: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFF18D191),
            ),
            child: new Image.asset(
              "assets/Icons/mhealthIcon1.png",
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(right: 71.0, top: 62.0),
            height: 70.0,
            width: 70.0,
            padding: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFFFC6A7F),
            ),
            child: new Image.asset(
              "assets/Icons/mhealthIcon2.png",
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(left: 71.0, top: 62.0),
            height: 70.0,
            width: 70.0,
            padding: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFFF4B400),
            ),
            child: new Image.asset(
              "assets/Icons/mhealthIcon3.png",
            ),
          )
        ],
      )
    ]));
  }
}
