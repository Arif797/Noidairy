import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String buttonText;
  final Function onButtonPressed;
  CommonButton({this.buttonText, this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: onButtonPressed,
        color: Color(0xff453658),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(buttonText,
              style: TextStyle(
                color: Colors.white,
              )),
        ));
  }
}
