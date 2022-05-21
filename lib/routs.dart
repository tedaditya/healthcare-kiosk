import 'package:flutter/material.dart';
import 'package:healthcare_kiosk/screens/camera/camera_screen.dart';
import 'package:healthcare_kiosk/screens/sign_in/sign_in_screen.dart';
import 'package:healthcare_kiosk/screens/sign_up/sign_up_screen.dart';
import 'package:healthcare_kiosk/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CameraScreen.routeName: (context) => CameraScreen(),
};
