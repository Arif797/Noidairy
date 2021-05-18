import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:successivepoc/helpers/constants.dart';

import 'home.dart';

class InputUserDetails extends StatefulWidget {
  @override
  _InputUserDetailsState createState() => _InputUserDetailsState();
}

class _InputUserDetailsState extends State<InputUserDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var color = 0xff453658;
  final nameController = TextEditingController();
  final blockAddressController = TextEditingController();
  final sectorAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.cyan[100],
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              Image.asset(
                NOIDAIRY_BOY,
                width: 170,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Personal Info",
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: nameController,
                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return INPUT_FIELD_REQUIRED;
                                }
                                return null;
                              },
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                              decoration: InputDecoration(
                                  labelStyle: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                  labelText: "Full Name",
                                  contentPadding: EdgeInsets.zero),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Address",
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: blockAddressController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return INPUT_FIELD_REQUIRED;
                                }
                                return null;
                              },
                              keyboardType: TextInputType.streetAddress,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                              decoration: InputDecoration(
                                  labelStyle: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                  labelText: "Block no.",
                                  contentPadding: EdgeInsets.zero),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "example: Block J-212",
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            TextFormField(
                              controller: sectorAddressController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return INPUT_FIELD_REQUIRED;
                                }
                                return null;
                              },
                              keyboardType: TextInputType.streetAddress,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                              decoration: InputDecoration(
                                  labelStyle: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                  labelText: "Sector Address",
                                  contentPadding: EdgeInsets.zero),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "example: Sector 22, Noida",
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            // ignore: deprecated_member_use
                            RaisedButton(
                                onPressed: () {
                                  if (nameController.text.length <= 0 ||
                                      blockAddressController.text.length <= 0 ||
                                      sectorAddressController.text.length <=
                                          0) {
                                    _scaffoldKey.currentState
                                        // ignore: deprecated_member_use
                                        .showSnackBar(SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Please fill all the required details!",
                                            style: GoogleFonts.openSans(
                                                textStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          Text(
                                            'OK',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
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
                                  child: Text(SUBMIT_BUTTON,
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
            ],
          ),
        ),
      ),
    );
  }
}
