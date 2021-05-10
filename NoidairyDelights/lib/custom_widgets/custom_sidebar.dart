import 'package:flutter/material.dart';

class CustomSidebarDrawer extends StatefulWidget {
  final Function drawerClose;

  const CustomSidebarDrawer({Key key, this.drawerClose}) : super(key: key);

  @override
  _CustomSidebarDrawerState createState() => _CustomSidebarDrawerState();
}

class _CustomSidebarDrawerState extends State<CustomSidebarDrawer> {
  @override
  Widget build(BuildContext context) {
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
                    "assets/images/slogo.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Arif Ahmad',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Software Developer",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              )),
          ListTile(
            onTap: () {
              debugPrint("About us");
            },
            title: Text(
              "About",
            ),
          ),
          ListTile(
            onTap: () {
              debugPrint("About us");
            },
            title: Text(
              "Services",
            ),
          ),
          ListTile(
            onTap: () {
              debugPrint("Portfolio");
            },
            title: Text("Portfolio"),
          ),
          ListTile(
            onTap: () {
              debugPrint("Blogs");
            },
            title: Text("Team Culture"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Blogs"),
          ),
          ListTile(
            onTap: () {
              debugPrint("Careers");
            },
            title: Text("Careers"),
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Log Out");
            },
            title: Text("Contact us"),
          ),
        ],
      ),
    );
  }
}
