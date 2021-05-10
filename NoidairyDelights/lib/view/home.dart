import 'package:successivepoc/custom_widgets/custom_sidebar.dart';
import 'package:successivepoc/view/dashboard.dart';
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

  final Items item1 = new Items(
      title: "Calendar",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "assets/images/calendar.png");

  final Items item2 = new Items(
    title: "Groceries",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    img: "assets/images/food.png",
  );

  final Items item3 = new Items(
    title: "Locations",
    subtitle: "E-29, Sector 11, Noida",
    event: "",
    img: "assets/images/images/map.png",
  );

  final Items item4 = new Items(
    title: "Activity",
    subtitle: "Rose favirited your Post",
    event: "",
    img: "assets/images/festival.png",
  );

  final Items item5 = new Items(
    title: "To do",
    subtitle: "Homework, Design",
    event: "4 Items",
    img: "assets/images/todo.png",
  );

  final Items item6 = new Items(
    title: "Settings",
    subtitle: "",
    event: "2 Items",
    img: "assets/images/setting.png",
  );

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
                    "NoiDairy Delights",
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
                    "Dont worry we are here",
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
                  "assets/images/milk_logo.png",
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

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
