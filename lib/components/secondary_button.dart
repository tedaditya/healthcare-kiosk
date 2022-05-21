import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(64),
      child: OutlineButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        //color: kPrimaryColor,
        borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
