import 'package:flutter/material.dart';
import 'package:healthcare_kiosk/components/primary_button.dart';
import 'package:healthcare_kiosk/components/secondary_button.dart';
import 'package:healthcare_kiosk/constants.dart';
import 'package:healthcare_kiosk/screens/splash/components/splash_content.dart';
import 'package:healthcare_kiosk/screens/sign_in/sign_in_screen.dart';
import 'package:healthcare_kiosk/screens/sign_up/sign_up_screen.dart';
import 'package:healthcare_kiosk/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Check your health anytime", "image": "assets/images/check.png"},
    {"text": "Easy to use", "image": "assets/images/easy.png"},
    {"text": "Accurate check result", "image": "assets/images/accurate.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(32),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 8,
                    ),
                    SecondaryButton(
                      text: "Log In",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                    PrimaryButton(
                      text: "Sign Up",
                      press: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 15 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
