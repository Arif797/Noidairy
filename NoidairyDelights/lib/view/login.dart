import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:successivepoc/controls/common_btn.dart';
import '../helpers/constants.dart';
import 'otp_screen.dart';

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.cyan[100],
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Image.asset(
                NOIDAIRY_LOGO,
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
                              textInputAction: TextInputAction.done,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return INPUT_FIELD_REQUIRED;
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                              controller: loginMobile,
                              decoration: InputDecoration(
                                  labelStyle: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                  labelText: ENTER_MOBILE_NO,
                                  contentPadding: EdgeInsets.zero),
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            // ignore: deprecated_member_use
                            CommonButton(
                              onButtonPressed: () {
                                String mobileNumber = loginMobile.text;
                                Pattern pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                                RegExp regex = RegExp(pattern);
                                print(regex.hasMatch(mobileNumber));
                                if (regex.hasMatch(mobileNumber) == false ||
                                    loginMobile.text.length > 10 ||
                                    loginMobile.text.length < 10) {
                                  _scaffoldKey.currentState
                                      // ignore: deprecated_member_use
                                      .showSnackBar(SnackBar(
                                    content: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          ENTER_VALID_NO,
                                          style: GoogleFonts.openSans(
                                              textStyle: TextStyle(
                                                  color: Color(0xffa29aac),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        Text(
                                          'OK',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    duration: Duration(seconds: 3),
                                  ));
                                } else {
                                  String phoneNumber;
                                  phoneNumber = loginMobile.text;
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ValidateOTPScreen(phoneNumber)));
                                }
                              },
                              buttonText: SEND_OTP_BUTTON,
                            ),
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
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("2020-2021 © NoidaDairy Delights Pvt Ltd",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
