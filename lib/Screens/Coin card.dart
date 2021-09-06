import 'dart:math';
import 'package:cato/Screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class Coin extends StatefulWidget {
  @override
  _CoinState createState() => _CoinState();
}
class _CoinState extends State<Coin> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(
          decoration: BoxDecoration(
              color: HexColor("#22136B"),
              borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)
              )
          ), //new pluggin added
          height: MediaQuery.of(context).size.height,

        child:Column(
        children:<Widget> [
          Padding(padding:EdgeInsets.only(top: 50,left: 10),
           child:Container(
              alignment: Alignment.bottomCenter,
              child: Text('COIN CARD\n',
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w200))),),
          Container(
            child: Row(children:<Widget> [
              Padding(padding:EdgeInsets.only(top:5,left: 50),
                  child: Container(
                    width: 100,
                    height:100,
                        child:
                        Image.asset('assets/step.png'))
                      ),
                Padding(padding:EdgeInsets.only(top:5,left: 80),
                 child: Container(
                          child:Column(
                            children:<Widget> [
                              Text(
                            'STEP',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              fontStyle: FontStyle.normal,
                              fontSize: 48,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                              Padding(padding: EdgeInsets.only(right: 30),
                              child:Text(
                                'STEP   FINANCE',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lato(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                           ),
                              Text(
                                'PORTFOLIO    MANAGER',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                 ])),
                )])),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MARKET CAP',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "300,000,000",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'VOLUME',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "1,000,000",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'LIQUIDITY',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "100,000",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'HOLDERS',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "10,000",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SUPPLY',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "1,300,000,000",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 0),
                    child: Container(
                        alignment: Alignment.centerRight,
                        height: 50,
                        child: Image.asset('assets/url.png')),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, right: 20, top: 30, bottom: 0),
                    child:Container(
                        alignment: Alignment.centerRight,
                        height: 50,
                        child: Image.asset('assets/twitter.png')),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, right: 20, top: 30, bottom: 0),
                    child:Container(
                        alignment: Alignment.centerRight,
                        height: 50,
                        child: Image.asset('assets/discord.png')),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, right:10, top: 30, bottom: 0),
                    child:Container(
                        alignment: Alignment.centerRight,
                        height: 70,
                        child: Image.asset('assets/Telegram.png')),),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )),
        Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0, top: 30, bottom: 0),
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 3 / 4,
              decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin:Alignment.centerLeft,
                   colors: [HexColor("#FFA910"),HexColor("#F962BB")]
                 ),
                  borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  'TRADE NOW',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),),
       ])));
  }
}