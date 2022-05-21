import 'package:flutter/material.dart';
import 'package:healthcare_kiosk/screens/sign_in/components/body.dart';

import '../../size_config.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Log In"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
