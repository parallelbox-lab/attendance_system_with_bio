import 'dart:async';
import 'package:attendance_with_bio/ui/onboarding_screen/onboarding.dart';
import 'package:attendance_with_bio/ui/pageview.dart';
import 'package:attendance_with_bio/ui/signin/signin.dart';
import 'package:attendance_with_bio/ui/utils/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
// import 'package:gopadi_mobile/components/bottom_navigation.dart';
// import 'package:gopadi_mobile/screens/sign_up/sign_up.dart';
// import 'package:sizer/sizer.dart';
// import 'onboarding_screens/screen1.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  static String routeName = "/splash";

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int? isViewed;
  String? email;
  void _navigationPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email');
  
    if (email == null) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const Onboarding()));
    } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const PageViews()));
    }
  }


  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => _navigationPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          // height: 30.h,
          child: Column(
            children: [
              CustomText(text: "NTECH SYSTEMS",size: 18.sp,weight: FontWeight.w800,),
              CustomText(text: "Building Scalable Softwares for all",size: 14.sp,weight: FontWeight.w400,),

            ],
          ),
        ),
      ),
    );
  }
}
