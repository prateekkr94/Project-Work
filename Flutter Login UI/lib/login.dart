import 'package:flutter/material.dart';
import 'SignInEmail.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  new Container(
                    height: 70.0,
                    width: 70.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFF18D191),
                    ),
                    child: new Image.asset("assets/Icons/mhealthIcon1.png",
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(right: 71.0,top: 122.0),
                    height: 70.0,
                    width: 70.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFFC6A7F),
                    ),
                    child: new Image.asset("assets/Icons/mhealthIcon2.png",
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(left: 71.0,top: 122.0),
                    height: 70.0,
                    width: 70.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFF4B400),
                    ),
                    child: new Image.asset("assets/Icons/mhealthIcon3.png",
                    ),
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 30.0),
                    child: new Text("MTU Healthcare API", style: new TextStyle(fontSize: 30.0),),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 60.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => SignInEmailPage(),
                          ));
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF3CB371),
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: new Text("Sign In With Email", style: new TextStyle(fontSize: 20.0, color: Colors.white),),
                        ),
                      ),),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0, left: 20.0, top: 10.0),
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF4364A1),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text("FaceBook", style: new TextStyle(fontSize: 20.0, color: Colors.white),),
                      ),),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 5.0, top: 10.0),
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFFDF513B),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text("Google", style: new TextStyle(fontSize: 20.0, color: Colors.white),),
                      ),),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}