import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app3/Screens/loginsuccesful.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool ishide = true;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 20,
                  child: Container(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    height: 300,
                    child: Image.asset('assets/loginscreen/loginanm.gif'))
              ],
            ),
          ),
          Container(
            color: HexColor("#FFF0F3"), //new pluggin added
            height: MediaQuery.of(context).size.height - 250,
            margin: EdgeInsets.only(top: 250),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Email',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0.0, right: 0, top: 15, bottom: 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 3.5 / 4,
                            height: 50,
                            child: TextFormField(
                              controller: _emailContoller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Email cannot be empty';
                                }
                                if (!RegExp(
                                    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email Address';
                                } else
                                  return null;
                              },
                              decoration: InputDecoration(
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor("#FF5A5F"), width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor("#FF5A5F"), width: 2)),
                                fillColor: Colors.black,
                                focusColor: Colors.black,
                                hoverColor: Colors.black,
                              ),
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, right: 0, top: 0, bottom: 0),
                            child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width *
                                    (3.5 / 4),
                                child: TextFormField(
                                  controller: _passwordController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Password cannot be empty';
                                    } else
                                      return null;
                                  },
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: HexColor("#FF5A5F"),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: HexColor("#FF5A5F"),
                                            width: 2)),
                                    fillColor: Colors.black,
                                    focusColor: Colors.black,
                                    hoverColor: Colors.black,
                                    suffix: ishide
                                        ? Image.asset(
                                      "assets/loginscreen/Hide.png",
                                      height: 19,
                                    )
                                        :null,
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0.0, right: 0, top: 30, bottom: 0),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 3.5 / 4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context,

                                MaterialPageRoute(builder: (context) => LoginSuccesful()));
                          },
                          child: Text(
                            'Login Now',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: FlatButton(
                          onPressed: () {},
                          child: Text("Forgot Password ?",
                              style: TextStyle(color: Colors.black))),
                    ),
                    Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              'New User?',
                              style: TextStyle(color: Colors.black),
                            ),
                            FlatButton(
                              textColor: Colors.white,
                              child: Text(
                                'Create Account',
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              onPressed: () {},
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        '------------------ Or ------------------',
                        style:
                        TextStyle(color: Colors.pinkAccent, fontSize: 14),
                      ),
                    ),
                    Text(
                      'Continue with :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}