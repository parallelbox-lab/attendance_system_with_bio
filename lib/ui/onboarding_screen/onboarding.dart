import 'package:attendance_with_bio/ui/signin/signin.dart';
import 'package:attendance_with_bio/ui/utils/custom_text.dart';
import 'package:attendance_with_bio/ui/utils/button_widget.dart';
import "package:flutter/material.dart";
import 'package:sizer/sizer.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/onboard.jpg"), fit: BoxFit.cover),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
      Positioned(
          bottom: MediaQuery.of(context).size.height * 0.3,
          left: 20,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                child: const CustomText(
              text: "ParallelBox",
              size: 34,
              color: Colors.white,
              weight: FontWeight.bold,
            )),
            Container(
              child:CustomText(
              text: "Best Place to work.\nManaging all workers remotely",
              size: 13.sp,
              color: Colors.white,
              weight: FontWeight.bold,
            )),            
          ])),
          Positioned.fill(
          bottom: 70,
          left: 0,
          child:Align(
            alignment: Alignment.bottomCenter,
            child: ButtonWidget(text: "Login to Continue",
            press:(){
              Navigator.pushNamed(context, SignIn.routeName);
            }),
          )
          )        
    ]));
  }
}
