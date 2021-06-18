import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}
class _ContactState extends State<Contact> {
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _messageContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final maxLines = 5;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                 Image.asset('assets/contact/Group 35.png', height: 32,alignment: Alignment.centerLeft,),
                   Container(
                      height: 100,
                     child: Image.asset('assets/contact/Group44.png')),
                 ],
        ),
        backgroundColor: Colors.white,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  child: Container(
                    width: 120,
                    height: 80,
                    child: Stack(alignment: Alignment.topRight, children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('Contact\n'
                            'Us',
                            style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold))),
                      ),
                      Positioned(
                        child: Container(
                            alignment: Alignment(1.5, 0),
                            height: 40,
                            child: Image.asset(
                                'assets/contact/kite.png')), //from assets
                      ),
                    ]),
                  ),
                ),
                Align(
                  alignment: Alignment(7.0,0),
                  child: Container(
                    height: 300,
                      child: Container(
                          child: Transform(
                              transform: Matrix4.rotationY(pi),
                              child:
                              Image.asset('assets/contact/support (1).gif')))),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffFFF0F3),
                borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)
                )
            ), //new pluggin added
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
                              'Name',
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
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 3.5 / 4,
                            height: 50,
                            child: TextFormField(
                              controller: _nameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'name cannot be empty';
                                } else
                                  return null;
                              },
                              decoration: InputDecoration(
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffFF5A5F), width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffFF5A5F), width: 2)),
                                fillColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
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
                                'Email',
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
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width *
                                    (3.5 / 4),
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
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffFF5A5F),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffFF5A5F),
                                            width: 2)),
                                    fillColor: Colors.black,
                                    focusColor: Colors.black,
                                    hoverColor: Colors.black,
                                  ),
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )),
                          ),
                        ],
                      ),
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
                                'Leave a message',
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
                                color: Colors.white,
                              height: maxLines * 24.0,
                                width: MediaQuery.of(context).size.width *
                                    (3.5/ 4),
                                child: TextFormField(
                                  maxLines: maxLines,
                                  controller: _messageContoller,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'message cannot be empty';
                                    } else
                                      return null;
                                  },
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffFF5A5F),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffFF5A5F),
                                            width: 2)),
                                    fillColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
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
                        left: 30, right: 30, top: 20, bottom: 0),
                     child:Row(
                       children: <Widget>[
                         Text("       - - - - - - - - - - - - - - - -",style:TextStyle(
                      fontSize: 14
                     ),
                           textAlign: TextAlign.left,
                         ),
                         Container(
                           height: 50,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.black
                           ),
                           child: Image.asset("assets/contact/Send.png"),
                         ),
                         Text("- - - - - - - - - - - - - - - - - ",
                           style:TextStyle(
                               fontSize: 14
                           ),
                         textAlign: TextAlign.right,),
                       ],
                     )
                    ),
                    Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0, right: 20, top: 30, bottom: 0),
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  height: 50,
                                  child: Image.asset('assets/contact/linkedin.png')),),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0, right: 20, top: 30, bottom: 0),
                              child:Container(
                                  alignment: Alignment.centerRight,
                                  height: 50,
                                  child: Image.asset('assets/contact/mail.png')),),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0, right: 20, top: 30, bottom: 0),
                              child:Container(
                                  alignment: Alignment.centerRight,
                                  height: 50,
                                  child: Image.asset('assets/contact/google.png')),),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0, right: 20, top: 30, bottom: 0),
                              child:Container(
                                  alignment: Alignment.centerRight,
                                  height: 50,
                                  child: Image.asset('assets/contact/phonecall.png')),),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        )),
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