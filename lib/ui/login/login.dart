import 'package:attendance_with_bio/ui/login/components/login_form.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget{
  const Login({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:SingleChildScrollView(child:LoginForm(),)
    );
  }
}