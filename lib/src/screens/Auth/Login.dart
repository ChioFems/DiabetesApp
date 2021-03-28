import 'package:flutter/material.dart';
import '../../../constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Diab',
                    style:
                        TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50.0, 175.0, 0.0, 0.0),
                  child: Text(
                    'Assistant',
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: kAppMainColor,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(340.0, 155.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Container(
                    padding:
                        EdgeInsets.only(top: 370.0, left: 15.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                            decoration: InputDecoration(
                                labelText: 'PHONE NUMBER:',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey))),
                        SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'PASSWORD:',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(top: 15.0, left: 20.0),
                            child: InkWell(
                              child: Text('Forgot Password',
                                  style: TextStyle(
                                      color: kAppMainColor,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      decoration: TextDecoration.underline)),
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                            height: 60.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.blueAccent,
                              color: kAppMainColor,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/home');
                                },
                                child: Center(
                                  child: Text('LOGIN',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            )),
                        SizedBox(height: 20.0),
                        Container(
                            height: 60.0,
                            color: Colors.transparent,
                            child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 1.0),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                        child: ImageIcon(AssetImage(
                                            'assets/icons/home.png'))),
                                    SizedBox(width: 10.0),
                                    Center(
                                        child: Text(
                                      'Login with Facebook',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ))
                                  ],
                                )))
                      ],
                    )),
              ],
            )),
            SizedBox(height: 10.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('New to DiabAssistant?',
                  style: TextStyle(fontFamily: 'Montserrat')),
              SizedBox(width: 15.0),
              InkWell(
                  onTap: () {},
                  child: Text('Register',
                      style: TextStyle(
                          color: kAppMainColor,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)))
            ])
          ],
        ));
  }
}
