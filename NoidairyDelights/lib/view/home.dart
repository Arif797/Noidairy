import 'package:successivepoc/custom_widgets/custom_sidebar.dart';
import 'package:successivepoc/helpers/constants.dart';
import 'package:successivepoc/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  FSBStatus _fsbStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xff392850),
      body: FoldableSidebarBuilder(
        drawerBackgroundColor: Colors.cyan[100],
        drawer: CustomSidebarDrawer(
          drawerClose: () {
            setState(() {
              _fsbStatus = FSBStatus.FSB_CLOSE;
            });
          },
        ),
        screenContents: _screenContent(),
        status: _fsbStatus,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[400],
          child: Icon(
            Icons.info,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              _fsbStatus = _fsbStatus == FSBStatus.FSB_OPEN
                  ? FSBStatus.FSB_CLOSE
                  : FSBStatus.FSB_OPEN;
            });
          }),
    );
  }

  Widget _screenContent() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 70,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    NOIDAIRY_DELIGHTS,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    NOIDAIRY_SLOGAN,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Color(0xffa29aac),
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              IconButton(
                alignment: Alignment.topCenter,
                icon: Image.asset(
                  NOIDAIRY_BOY,
                  width: 280,
                  height: 400,
                ),
                onPressed: () {
                  setState(() {
                    _fsbStatus = _fsbStatus == FSBStatus.FSB_OPEN
                        ? FSBStatus.FSB_CLOSE
                        : FSBStatus.FSB_OPEN;
                  });
                },
              )
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        GridDashboard()
      ],
    );
  }
}
