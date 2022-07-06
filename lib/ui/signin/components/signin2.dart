
// owoeye precious <owoeyeprecious36@gmail.com>
// 3:06 PM (1 minute ago)
// to me

// //import 'dart:js';
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;
// import 'constants.dart';
// import 'login.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';

// class MyRegister extends StatefulWidget {

//   @override
//   _MyRegisterState createState() => _MyRegisterState();
// }

// class _MyRegisterState extends State<MyRegister> {
//   Future Register() async {
//     // var url = Uri.http("192.168.0.104", '/login/login.php', {'q': '{http}'});
//     //var url = Uri.http("internoscarwealth.lovestoblog.com", '/RegisterAppUser.php', {'q': '{http}'});

//     //var url = Uri.parse('https://internoscarwealth.lovestoblog.com/RegisterAppUser.php');
//     String url = 'https://internoscarwealth.lovestoblog.com/RegisterAppUser.php';
//     //var response = await http.post(url, body: {
//     var response = await http.post(Uri.parse(url), body: {
//       "name": name.text,
//       "email": email.text,
//       "country": country.text,
//       "dependents": numberofdependents.text,
//       "mobile": phonenumber.text,
//       "password": password.text,
//     });

//     var data = json.decode(response.body);
//     if (data.toString() == "Success") {
//       Fluttertoast.showToast(
//         msg: 'Registration Successful',
//         backgroundColor: Colors.green,
//         textColor: Colors.white,
//         toastLength: Toast.LENGTH_SHORT,
//       );

//       Navigator.pushNamed(context, 'login');
//     }
//     else {
//       Fluttertoast.showToast(
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         msg: 'Username and password invalid',
//         toastLength: Toast.LENGTH_SHORT,
//       );
//     }
//   }

//   bool isPasswordVisible = false;
  
//   @override
//   Widget build(BuildContext context) {

//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage('assets/images/10.png'), fit: BoxFit.cover),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         body: Stack(

//           children: [
//             Container(
//               padding: EdgeInsets.only(left: 70, top: 100),
//               child: Text(
//                 'Create your Account', textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.white, fontSize: 22),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.28),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 35, right: 35),
//                       child: Column(
//                         children: [

//                           SizedBox(
//                             height: 60,
//                             width: 250,

//                             child: TextField(
//                               style: TextStyle(fontSize: 14, height: .8, color: Colors.white),
//                               keyboardType: TextInputType.text,
//                               controller: name,
//                               decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 labelStyle: TextStyle(color: Colors.white),
//                                 labelText: 'Name',
//                               ),
//                             ),
//                           ),

//                           SizedBox(
//                             height: 15,
//                           ),

//                           SizedBox(
//                             height: 60,
//                             width: 250,
//                             child: TextField(
//                               style: TextStyle(fontSize: 14, height: .8, color: Colors.white),
//                               keyboardType: TextInputType.text,
//                               controller: email,
//                               decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 labelStyle: TextStyle(color: Colors.white),
//                                 labelText: 'Email',
//                               ),
//                             ),
//                           ),

//                           SizedBox(
//                             height: 15,
//                           ),

//                           SizedBox(
//                             height: 60,
//                             width: 250,
//                             child: TextField(
//                               style: TextStyle(fontSize: 14, height: .8, color: Colors.white),
//                               keyboardType: TextInputType.text,
//                               controller: country,
//                               decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 labelStyle: TextStyle(color: Colors.white),
//                                 labelText: 'Country',
//                               ),
//                             ),
//                           ),

//                           SizedBox(
//                             height: 15,
//                           ),

//                           SizedBox(
//                             height: 60,
//                             width: 250,
//                             child: TextField(
//                               style: TextStyle(fontSize: 14, height: .8, color: Colors.white),
//                               keyboardType: TextInputType.number,
//                               controller: numberofdependents,
//                               decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 labelStyle: TextStyle(color: Colors.white),
//                                 labelText: 'Number of dependents',
//                               ),
//                             ),
//                           ),

//                           SizedBox(
//                             height: 15,
//                           ),

//                           SizedBox(
//                             height: 60,
//                             width: 250,
//                             child: TextField(
//                               style: TextStyle(fontSize: 14, height: .8, color: Colors.white),
//                               keyboardType: TextInputType.number,
//                               controller: phonenumber,
//                               decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 labelStyle: TextStyle(color: Colors.white),
//                                 labelText: 'Phone number',
//                               ),
//                             ),
//                           ),

//                           SizedBox(
//                             height: 15,
//                           ),

//                           SizedBox(
//                             height: 60,
//                             width: 250,
//                             child: TextField(
//                               style: TextStyle(fontSize: 14, height: .8, color: Colors.white),
//                               obscureText: true,
//                               keyboardType: TextInputType.text,
//                               controller: password,
//                               decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 labelStyle: TextStyle(color: Colors.white),
//                                 labelText: 'Password',
//                               ),
//                             ),
//                           ),


//                           SizedBox(
//                             height: 15,
//                           ),

//                           SizedBox(
//                             height: 60,
//                             width: 250,
//                             child: TextField(
//                               style: TextStyle(fontSize: 14, height: .8, color: Colors.white),
//                               obscureText: true,
//                               keyboardType: TextInputType.text,
//                               controller: confpasw,
//                               decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 labelStyle: TextStyle(color: Colors.white),
//                                 labelText: 'Confirm Password',
//                               ),
//                             ),
//                           ),


//                           SizedBox(
//                             height: 15,
//                           ),

//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                 // onPressed: () {
//                                 //   Navigator.pushNamed(context, 'login');
//                                 // },
//                                 //onPressed:() => registerUser(),
//                                 onPressed: () {
//                                   //registerUser(context);
//                                   Register();
//                                 },
//                                 child:Text(
//                                   'Sign Up',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.underline,
//                                       color: Colors.white,
//                                       fontSize: 20),
//                                 ),

//                                 style: ButtonStyle(),
//                               ),

//                               CircleAvatar(
//                                 radius: 30,
//                                 backgroundColor: Color(0xff4c505b),
//                                 child: IconButton(
//                                     color: Colors.white,
//                                     // onPressed: () {
//                                     //   Navigator.pushNamed(context, 'login');
//                                     // },
//                                     onPressed: () {
//                                       Register();
//                                       //registerUser(context);
//                                     },
//                                     icon: Icon(
//                                       Icons.arrow_forward,
//                                     )),
//                               )
//                             ],
//                           ),

//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.pushNamed(context, 'login');
//                                 },
//                                 child: Text(
//                                   'Sign In',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.underline,
//                                       color: Colors.white,
//                                       fontSize: 18),
//                                 ),
//                                 style: ButtonStyle(),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }