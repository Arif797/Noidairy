import 'package:successivepoc/view/home.dart';
import 'package:flutter/material.dart';
import 'package:successivepoc/view/login.dart';

void main() {
  runApp(NoidairyApp());
}

class NoidairyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noidairy Delights',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
