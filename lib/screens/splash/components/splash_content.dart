import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(
          flex: 8,
        ),
        Text(
          "Healthcare Kiosk",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(32),
            color: kTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(320),
          width: getProportionateScreenWidth(320),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: kTextColor,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
