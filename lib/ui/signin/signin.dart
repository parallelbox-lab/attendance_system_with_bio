import 'package:flutter/material.dart';
import 'package:attendance_with_bio/ui/signin/components/form_fields.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // backgroundColor: Colors.da,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          SingleChildScrollView(child: FormFields()),
        ],
      ),
    ));
  }
}
