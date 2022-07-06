import 'package:attendance_with_bio/ui/dashboard/dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Future signInAnonymously() async {
  //   UserCredential result = await _auth.signInAnonymously();
  //   User? user = result.user;
  // }
  Future<void> createWithEmailAndPwd(String email, String password,String userName, BuildContext context)async{
  final _pref = await SharedPreferences.getInstance();
  try{
  UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
  await userCredential.user!.sendEmailVerification();
  // await FirebaseFirestore.instance.collection("UserData").doc(userCredential.user!.uid).set({
  //   "userId": userCredential.user!.uid,
  //   "userName": userName,
  //   "email":email,
  //   "password":password
  // }).then((value) {
  // _pref.setString("userName", userName);
  // _pref.setString("email", email);
  // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(ctx)=> const Dashboard()), (route) => false);
  // });
  _pref.setString("userName", userName);
  _pref.setString("email", email);
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(ctx)=> const Dashboard()), (route) => false);
  }catch(e){
    rethrow;
  } }

  // login
  Future<void> loginWithEmailAndPwd(String email, String password, BuildContext context)async{
  final _pref = await SharedPreferences.getInstance();
  try{
  UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
  await userCredential.user!.sendEmailVerification();
  // await FirebaseFirestore.instance.collection("UserData").doc(userCredential.user!.uid).set({
  //   "userId": userCredential.user!.uid,
  //   "userName": userName,
  //   "email":email,
  //   "password":password
  // }).then((value) {
  // _pref.setString("userName", userName);
  // _pref.setString("email", email);
  // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(ctx)=> const Dashboard()), (route) => false);
  // });
  _pref.setString("email", email);
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(ctx)=> const Dashboard()), (route) => false);
  }catch(e){
    rethrow;
  } }
}
