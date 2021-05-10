import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final loginMobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xff392850),
        title: Text('NoiDairy Delights'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color(color),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Image.asset(
                'assets/images/milk_logo.png',
                width: 170,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter phone number!';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                              controller: loginMobile,
                              decoration: InputDecoration(
                                  labelStyle: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Color(0xffa29aac),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600)),
                                  labelText: 'Enter Mobile no.',
                                  contentPadding: EdgeInsets.zero),
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            // ignore: deprecated_member_use
                            RaisedButton(
                                onPressed: () {
                                  if (loginMobile.text.length > 10 ||
                                      loginMobile.text.length < 10) {
                                    _scaffoldKey.currentState
                                        // ignore: deprecated_member_use
                                        .showSnackBar(SnackBar(
                                      content: InkWell(
                                          onTap: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            LoginScreen()));
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Enter valid Mobile number',
                                                style: GoogleFonts.openSans(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffa29aac),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              ),
                                              Text(
                                                'Okay',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )),
                                      duration: Duration(seconds: 3),
                                    ));
                                  } else {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => Home()));
                                  }
                                },
                                color: Color(color),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text("Send OTP",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                )),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text("2019-2020 © Successive Technologies Pvt Ltd",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}