import 'package:flutter/material.dart';
import 'package:healthcare_kiosk/constants.dart';
import 'package:healthcare_kiosk/screens/camera/camera_screen.dart';
import 'package:healthcare_kiosk/size_config.dart';
import 'package:healthcare_kiosk/components/form_error.dart';
import 'package:healthcare_kiosk/components/primary_button.dart';
import 'package:healthcare_kiosk/components/custom_suffix_icon.dart';
import 'package:healthcare_kiosk/components/kotak_button.dart';
import 'package:healthcare_kiosk/components/medium_button.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String username;
  String name;
  String password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(20)),
          buildNameFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildUsernameFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MediumButton(
                text: "Sign Up",
                press: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                  }
                },
              ),
              KotakButton(
                text: "P",
                press: () {
                  Navigator.pushNamed(context, CameraScreen.routeName);
                },
              ),
            ],
          ),
          // KotakButton(
          //   text: "Test",
          //   press: () {},
          // ),
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kUsernameError)) {
          setState(() {
            errors.remove(kUsernameError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kUsernameError)) {
          setState(() {
            errors.add(kUsernameError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/bx-user-circle.svg",
        ),
      ),
    );
  }

  TextFormField buildUsernameFormField() {
    return TextFormField(
      onSaved: (newValue) => username = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kUsernameError)) {
          setState(() {
            errors.remove(kUsernameError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kUsernameError)) {
          setState(() {
            errors.add(kUsernameError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Username",
        hintText: "Enter username",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/bx-user.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length < 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/bx-show.svg",
        ),
      ),
    );
  }
}
