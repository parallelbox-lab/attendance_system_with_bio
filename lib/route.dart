import 'package:flutter/material.dart';
import 'package:attendance_with_bio/ui/splash/splash.dart';
import 'package:attendance_with_bio/ui/signin/signin.dart';
import 'package:attendance_with_bio/ui/pageview.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => const Splash(),
  SignIn.routeName: (context) => const SignIn(),
  PageViews.routeName: (context) => const PageViews()
};
