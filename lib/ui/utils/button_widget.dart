import 'package:flutter/material.dart';
import 'app_colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, this.text, this.press}) : super(key: key);
  final String? text;
  final Function? press;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 55.0,
        child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              primary: Colors.white,
              backgroundColor: kPrimaryColor
            ),
            onPressed: press as void Function()?,
            child: Text(text!,
                style: const TextStyle(
                    fontFamily: 'Core Pro',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
                textAlign: TextAlign.center)));
  }
}
