import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:successivepoc/controls/common_btn.dart';

class CustomSidebarDrawer extends StatefulWidget {
  final Function drawerClose;

  const CustomSidebarDrawer({Key key, this.drawerClose}) : super(key: key);

  @override
  _CustomSidebarDrawerState createState() => _CustomSidebarDrawerState();
}

class _CustomSidebarDrawerState extends State<CustomSidebarDrawer> {
  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.cyan[50],
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 200,
              color: Colors.cyan,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image.asset(
                    "assets/images/milk_logo.png",
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Don't worry we are here!",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Personal Info",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w900)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Name:",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Color(color),
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Arif Ahmad",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Contact no.",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Color(color),
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "+917007633714",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Address:",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Color(color),
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Block J-212 \nSector 22, Noida",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.center,
                  child: CommonButton(
                    buttonText: "Edit Details",
                    onButtonPressed: () {},
                  ))
            ]),
          ),
        ],
      ),
    );
  }
}
