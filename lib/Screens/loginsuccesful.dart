import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class LoginSuccesful extends StatefulWidget {
  @override
  _LoginSuccesfulState createState() => _LoginSuccesfulState();
}
class _LoginSuccesfulState extends State<LoginSuccesful> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/contact/Group 35.png', height: 32,alignment: Alignment.centerLeft,),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Container(
                  alignment: Alignment.centerRight,
                  height: 100,
                  child: Image.asset('assets/contact/Group44.png')),),
          ],
        ),
        backgroundColor: Colors.white,
      ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
              children: [
              Container(
                color: Colors.white,
                  alignment: Alignment.center,
                  height: 600,
                  child: Image.asset('assets/loginsuccesful/Mobilelogin.png')
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Login Successful !!',
                    style:
                    TextStyle(color: Colors.pinkAccent, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'You logged in successfully\n'
                        'Go to the Dashboard',
                    style:
                    TextStyle(color: Colors.black, fontSize: 14),
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
                        'Go to Dashboard',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
            ],),
          ),
        );
  }
}