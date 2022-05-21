import 'package:flutter/material.dart';
import 'package:flutter/src/material/flat_button.dart';
import '../constants.dart';
import '../size_config.dart';

class KotakButton extends StatelessWidget {
  const KotakButton({
    Key key,
    this.press, this.text,
  }) : super(key: key);
  final Function press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(64),
      height: getProportionateScreenHeight(64),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
