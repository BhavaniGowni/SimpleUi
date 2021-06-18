import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Faqs extends StatefulWidget {
  @override
  _FaqsState createState() => _FaqsState();
}
class _FaqsState extends State<Faqs> {
  bool isExpanded = false;
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
                    height: 40,
                    child: Stack(alignment: Alignment.topRight, children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("FAQ's",
                            style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold))),
                      ),
                      Positioned(
                        child: Container(
                            alignment: Alignment(1.0, 0),
                            height: 20,
                            child: Image.asset(
                                'assets/contact/kite.png')), //from assets
                      ),
                    ]),
                  ),
                ),
                Align(
                  alignment: Alignment(3.5, 0),
                  child: Container(
                      height: 300,
                      child: Container(
                          child: Transform(
                              transform: Matrix4.rotationY(pi),
                              child:
                              Image.asset('assets/faqs/react1.gif')))),
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
            ),
              height: MediaQuery.of(context).size.height - 250,
              margin: EdgeInsets.only(top: 250),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child:SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                 child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 15, bottom: 0),
                       child: Container(
                         width: MediaQuery.of(context).size.width * 3.5 / 4,
                         decoration: BoxDecoration(
                             color: Colors.black,
                             borderRadius: BorderRadius.circular(10.0)
                         ),
                          child:ExpansionTile(
                           initiallyExpanded: isExpanded,
                           backgroundColor: Colors.white,
                           childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                            title: Text("What are the benefits ?", style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                color: Color(0xffFFF0F3),
                                fontWeight: FontWeight.bold))),
                          children:[
                            Text( "Loreum Ipsum is simply dummy text of the printing"
                                  "and typesetting industry.Loreum Ipsum has been "
                                  "the industry's standard dummy text ever since the "
                                  "1500's, when an unkown printer took a gally of "
                                  "type and scarmbled it to make a type specimen "
                                  "book.It has surved not only five centuries,but "
                                  "also the leap into electronic typetesting, "
                                  "remaining essentially unchanged.",
                          style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                          color: Colors.black54,
                           fontWeight: FontWeight.normal))
                            ),
                          ],
                          onExpansionChanged: (isExpanded) {}
                        ),
                 ),),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 3.5 / 4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child:ExpansionTile(
                            initiallyExpanded: isExpanded,
                            backgroundColor: Colors.white,
                            childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                            title:Text("What are the benefits ?", style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Color(0xffFFF0F3),
                                    fontWeight: FontWeight.bold))),
                            children:[
                              Text("  "
                              ),
                            ],
                            onExpansionChanged: (isExpanded) {}
                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 3.5 / 4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child:ExpansionTile(
                            initiallyExpanded: isExpanded,
                            backgroundColor: Colors.white,
                            childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                            title:Text("What are the benefits ?", style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Color(0xffFFF0F3),
                                    fontWeight: FontWeight.bold))),
                            children:[
                              Text("  "
                              ),
                            ],
                            onExpansionChanged: (isExpanded) {}
                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 3.5 / 4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child:ExpansionTile(
                            initiallyExpanded: isExpanded,
                            backgroundColor: Colors.white,
                            childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                            title:Text("What are the benefits ?", style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Color(0xffFFF0F3),
                                    fontWeight: FontWeight.bold))),
                            children:[
                              Text("  "
                              ),
                            ],
                            onExpansionChanged: (isExpanded) {}
                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 3.5 / 4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child:ExpansionTile(
                            initiallyExpanded: isExpanded,
                            backgroundColor: Colors.white,
                            childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                            title: Text("What are the benefits ?", style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Color(0xffFFF0F3),
                                    fontWeight: FontWeight.bold))),
                            children:[
                              Text("  "
                              ),
                            ],
                            onExpansionChanged: (isExpanded) {}
                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 3.5 / 4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child:ExpansionTile(
                            initiallyExpanded: isExpanded,
                            backgroundColor: Colors.white,
                            childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                            title: Text("What are the benefits ?", style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Color(0xffFFF0F3),
                                    fontWeight: FontWeight.bold))),
                            children:[
                              Text("  "
                              ),
                            ],
                            onExpansionChanged: (isExpanded) {}
                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 3.5 / 4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child:ExpansionTile(
                            initiallyExpanded: isExpanded,
                            backgroundColor: Colors.white,
                            childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                            title: Text("What are the benefits ?", style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Color(0xffFFF0F3),
                                    fontWeight: FontWeight.bold))),
                            children:[
                              Text("",
                            style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal))),
                            ],
                            onExpansionChanged: (isExpanded) {}
                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 3.5 / 4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child:ExpansionTile(
                            initiallyExpanded: isExpanded,
                            backgroundColor: Colors.white,
                            childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                            title: Text("What are the benefits ?", style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    color: Color(0xffFFF0F3),
                                    fontWeight: FontWeight.bold))),
                            children:[
                              Text("  "
                              ),
                            ],
                            onExpansionChanged: (isExpanded) {}
                        ),
                      ),),
                  ],
                ),
              ),
            ),
          ) ]),
      ),
    );
  }
}
