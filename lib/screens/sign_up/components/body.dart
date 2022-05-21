import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthcare_kiosk/components/custom_suffix_icon.dart';
import 'package:healthcare_kiosk/components/primary_button.dart';
import 'package:healthcare_kiosk/constants.dart';
import 'package:healthcare_kiosk/components/form_error.dart';
import 'package:healthcare_kiosk/screens/sign_in/sign_in_screen.dart';
import 'package:healthcare_kiosk/size_config.dart';
import 'package:healthcare_kiosk/screens/sign_up/components/sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(32),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/register.png",
                  height: getProportionateScreenHeight(320),
                  width: getProportionateScreenWidth(320),
                ),
                Text(
                  "Join With Us!",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Sign up to join with our useful \nhealthcare facilities",
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                SignForm(),
                SizedBox(height: getProportionateScreenWidth(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: kGray3,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignInScreen.routeName);
          },
          child: Text(
            " Log In",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
