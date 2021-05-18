import 'package:flutter/material.dart';
import 'package:otp_screen/otp_screen.dart';
import 'package:successivepoc/view/login.dart';

import 'home.dart';

class ValidateOTPScreen extends StatefulWidget {
  final String phoneNo;
  ValidateOTPScreen(this.phoneNo);
  @override
  _ValidateOTPScreenState createState() => _ValidateOTPScreenState();
}

class _ValidateOTPScreenState extends State<ValidateOTPScreen> {
  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    return OtpScreen(
      icon: Image.asset(
        'assets/images/milk_logo.png',
      ),
      keyboardBackgroundColor: Color(color),
      otpLength: 4,
      validateOtp: validateOtp,
      routeCallback: moveToNextScreen,
      titleColor: Color(color),
      title: "Phone Number Verification",
      subTitle: "Please enter the OTP sent to \n +91-" + widget.phoneNo,
      themeColor: Colors.white,
    );
  }

  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  void moveToNextScreen(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }
}
